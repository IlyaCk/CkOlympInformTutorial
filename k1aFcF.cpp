#include <iostream>
#include <cmath>

using namespace std;

double SQR(double x) { return x*x; }

struct Point
{
        double x, y;
};

// many computational geometry functions were here, but they are intentionally deleted

pair<double, double> solve_system_2x2(const Point &p1, const Point &p2, const Point &right_part)
{
        double det_main = vect_mul(p1, p2);
        double det_1 = vect_mul(right_part, p2);
        double det_2 = vect_mul(p1, right_part);
        return make_pair(det_1/det_main, det_2/det_main);
}

void calculate_circle_by_3_points(Point &C, double &R)
{
        Point A1, A2, A3;
        cin >> A1.x >> A1.y >> A2.x >> A2.y >> A3.x >> A3.y;
        Point A1A2mid = 0.5 * (A1+A2);
        Point A1A2perp = rot_plus_pi_2(A2 - A1);
        Point A1A3mid = 0.5 * (A1+A3);
        Point A1A3perp = rot_plus_pi_2(A3 - A1);
        double k1 = solve_system_2x2(A1A2perp, -1.0 * A1A3perp, A1A3mid - A1A2mid).first;
        C = A1A2mid + k1*A1A2perp;
        R = dist(A1, C);
}

int main(int argc, char* argv[])
{
        int mode;
        Point C;
        double R;
        cin >> mode;
        if(mode==1)
        {
                cin >> C.x >> C.y >> R;
        }
        else
        {
                calculate_circle_by_3_points(C, R);
        }
        int N;
        cin >> N;
        int num_inside = 0, num_at = 0, num_outside = 0;
        for(int i=0; i<N; i++)
        {
                Point A;
                cin >> A.x >> A.y;
                double d;
                if(fabs((d = dist(C,A)) - R) < 1e-4)
                        num_at++;
                else if(d < R)
                        num_inside++;
                else
                        num_outside++;
        }
        cout << num_inside << " " << num_at << " " << num_outside << endl;
        return 0;
}