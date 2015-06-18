latex %1
mpost pics
latex %1
dvips -ta4 %1
dvipdfm -p a4 %1
rem del pics.*
