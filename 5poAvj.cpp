#include <iostream>
#include <cstdio>

using namespace std;

int main(int argc, char* argv[])
{
  int N, k;
  cin >> k >> N;
  for(int i=1; i<k; i++) {
    char buff[8];
    sprintf(buff, "%d", N);
    for(int j=0; buff[j]!=0; j++)
      N += buff[j]-'0';
  }
  cout << N << endl; 
  return 0;
}