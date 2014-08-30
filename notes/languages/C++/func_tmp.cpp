#include <iostream>
#include <string>

using namespace std;

template<typename T>
int size(const T& ref)
{
    return sizeof(ref);
}

template<>
int size(const string& ref)
{
    return ref.size();
}

int main(int argc, char** argv)
{
    int    i;
    long   l;
    int    ia[20];
    char   ca[100];
    string str("foo");

    cout << size(i  ) << endl; // 4
    cout << size(l  ) << endl; // 8
    cout << size(ia ) << endl; // 80
    cout << size(ca ) << endl; // 100
    cout << size(str) << endl; // 3

    return 0;
}

