#include <iostream>
#include "CBase.h"

using namespace std;

int main(int argc, char** argv)
{
    CBase base0;
    cout << base0.get() << endl; // 0

    CBase base1(7);
    cout << base1.add(1)->get() << endl; // 8

    CBase* base2 = new CBase;
    cout << base2->get() << endl; // 0
    delete base2;

    CBase* base3 = new CBase(3);
    cout << base3->add(2)->get() << endl; // 5
    delete base3;

    CBase* base4 = new CBase(10);
    CBase* base5 = base4;
    CBase  base6 = *base4;
    CBase& base7 = *base4;
    base4->set(2);
    cout << base4->get() << endl; // 2
    cout << base5->get() << endl; // 2
    cout << base6.get()  << endl; // 10
    cout << base7.get()  << endl; // 2
    delete base4;

    return 0;
}

