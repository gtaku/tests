#include <iostream>

using namespace std;

class Foo
{
public:
    int m_number;
    Foo(int number): m_number(number) {}
};

class Bar
{
public:
    int m_number;
    explicit Bar(int number): m_number(number) {}
};

int main(int argc, char** argv)
{
    Foo foo = 10; // OK
    cout << foo.m_number << endl; // 10

    //Bar bar = 5; // error
    Bar bar{5};
    cout << bar.m_number << endl; // 5

    return 0;
}

