import java.io.*;
import java.net.URL;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.util.NoSuchElementException;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class SubstAll {

    static Pattern patternTeXInputFile = Pattern.compile("(\\\\input\\s+)([\\S]+)(.*)$");
    static Pattern patternIdeOneLink = Pattern.compile("(\\\\verb\"(ideone\\.com/([\\S]+))\")(.*)$");
    static Pattern patternIdeOneFileName = Pattern.compile("filename=\"ideone_(.+)\"$");

    public static void main(String[] args) {
        if(args.length < 2) {
            System.err.println("Usage: java SubstAll.class <input.tex> <output.tex>");
            return;
        }
	    try {
            PrintWriter out = new PrintWriter(args[1], "cp1251");
            doAll(args[0], out);
            out.close();
        } catch (Exception e) {
            System.err.println("Smth wrong");
            System.err.println(e.getMessage());
            e.printStackTrace(System.err);
        }
    }

    private static void doAll(String fileName, PrintWriter out) {
        File fin = new File(fileName);
        if(!fin.exists() || fin.isDirectory()) {
            File fin2 = new File(fileName + ".tex");
            if(fin2.exists() && !fin.isDirectory()) {
                fin = fin2;
            } else {
                System.err.println("Cannot open file ``" + fileName + "''");
                return;
            }
        }
        Scanner in = null;
        try {
            in = new Scanner(fin, "cp1251");
        } catch (FileNotFoundException e) {
            System.err.println("Smth extremely strange: file ``" + fin.toString() + "''\n was said existing by File's methods,\n but cannot be opened with Scanner's constructor");
            e.printStackTrace(System.err) ;
        }
        try {
            int lineNumber = 0;
            while(in.hasNextLine()) {
                String curr = in.nextLine();
//                lineNumber++;
//                System.out.println("file " + fileName + ", line " + lineNumber + " : " + curr);
                processLine(curr, out);
            }
        } catch (NoSuchElementException | IllegalStateException e) {
            System.err.println("Exception dealing with nextLine really occured");
            e.printStackTrace(System.err) ;
        }

        in.close();
        System.out.println("doAll(" + fileName + ", ...) successfully finished");
    }

    private static void processLine(String curr, PrintWriter out) {
        {
            Matcher matcherTeXInputFile = patternTeXInputFile.matcher(curr);
            if (matcherTeXInputFile.find()) {
//                System.out.println("matcherTeXInputFile.group(1) = " + matcherTeXInputFile.group(1));
//                System.out.println("curr.indexOf(matcherTeXInputFile.group(1)) = " + curr.indexOf(matcherTeXInputFile.group(1)));
//                System.out.println("curr.substring(0, curr.indexOf(matcherTeXInputFile.group(1))) = " + curr.substring(0, curr.indexOf(matcherTeXInputFile.group(1))));
                String prefix = curr.substring(0, curr.indexOf(matcherTeXInputFile.group(1)));
                if(!prefix.isEmpty()) {
                    processLine(prefix + "\n", out);
                }
                doAll(matcherTeXInputFile.group(2), out);
                processLine(matcherTeXInputFile.group(3), out);
                return;
            }
        }
        {
            Matcher matcherIdeOneLink = patternIdeOneLink.matcher(curr);
            if (matcherIdeOneLink.find()) {
//                System.out.println("matcher.group(1) = " + matcherIdeOneLink.group(1));
//                System.out.println("matcher.group(2) = " + matcherIdeOneLink.group(2));
//                System.out.println("matcher.group(3) = " + matcherIdeOneLink.group(3));
//                System.out.println("matcher.group(4) = " + matcherIdeOneLink.group(4));
//                System.out.println("curr.indexOf(matcher.group(1)) = " + curr.indexOf(matcherIdeOneLink.group(1)));
//                System.out.println("curr.indexOf(matcher.group(4)) = " + curr.indexOf(matcherIdeOneLink.group(4)));
//                System.out.println("curr.substring(0, curr.indexOf(matcher.group(1))) = " + curr.substring(0, curr.indexOf(matcherIdeOneLink.group(1))));
//                System.out.println("curr.substring(0, curr.indexOf(matcher.group(4))) = " + curr.substring(0, curr.indexOf(matcherIdeOneLink.group(4))));
                processLine(curr.substring(0, curr.indexOf(matcherIdeOneLink.group(1))), out);
                out.println(matcherIdeOneLink.group(1));
                copyTheIdeOneLink(matcherIdeOneLink.group(1).toString(), matcherIdeOneLink.group(3).toString(), out);
                processLine(matcherIdeOneLink.group(4), out);
                return;
            }
        }
        out.println(curr);
    }

    private static void copyTheIdeOneLink(String linksNameForPrint, String ideOneCodeOnly, PrintWriter out) {
        String linkForUse = "http://ideone.com/plain/" + ideOneCodeOnly;
        try {
            URL toDownload = new URL(linkForUse);
            Matcher matcherIdeOneFileName = patternIdeOneFileName.matcher(toDownload.openConnection().getHeaderField("Content-Disposition"));
            String fNameToSave = matcherIdeOneFileName.find() ? matcherIdeOneFileName.group(1) : ideOneCodeOnly + ".txt";
            ReadableByteChannel rbc = Channels.newChannel(toDownload.openStream());
            try {
                new File(fNameToSave).createNewFile();
            } catch(IOException e) {
                System.err.println(linkForUse + " was not downloaded because creating _L_O_C_A_L_ file " + fNameToSave + " failed");
                e.printStackTrace(System.err) ;
                return;
            }
            FileOutputStream fos = new FileOutputStream(fNameToSave);
            fos.getChannel().transferFrom(rbc, 0, Long.MAX_VALUE);
//            Files.copy(toDownload.openStream(), Paths.get("."));
            out.println("\n\n{\\color{green}\\begin{small}\n\n\\renewcommand{\\baselinestretch}{0.875}\n\n(Повний вміст даного посилання " + linksNameForPrint + " такий:");
            out.println("\\verbatiminput{" + fNameToSave + "}");
            out.println("--- кінець цитати посилання " + linksNameForPrint + ")\n\n\\end{small}}\n\n");
        } catch (IOException e) {
            out.println("\n\n(\\colorbox{red}{\\color{green}{При спробі завантажити дане посилання виникла помилка, можливо, воно неправильне)}}\n\n\\ERRORBadIdeOneLink\n\n");
            System.err.println("Failed to download " + ideOneCodeOnly + " from ideone.com");
            e.printStackTrace(System.err) ;
        }

    }
}
