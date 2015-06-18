#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

int main(int argc, char* argv[])
{
  int N;
  cin >> N;
  vector<int> wagons(N);
  for(int i=0; i<N; i++)
    cin >> wagons[i];
  sort(wagons.begin(), wagons.end());
  int P;
  cin >> P;
  int res = 0;
  while(res < N && wagons[res] <= P) {
    P -= wagons[res];
    res++;
  }
  cout << res << endl;	
  return 0;
}