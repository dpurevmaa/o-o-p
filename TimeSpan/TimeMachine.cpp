#include <iostream>
#include "TimeSpan.h"
using namespace std;

int main() {

    TimeSpan t1(-1.3, -33, -78);

    cout << t1;

    cout << "Please enter three values: ";

    cin >> t1;
    cout << t1;
    return 0;
}