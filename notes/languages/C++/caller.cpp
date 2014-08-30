#include <iostream>

using namespace std;

template<typename T>
void caller(int a, int b, T func)
{
    int r = func(a, b);
    cout << r << endl;
}

// static methods
class A
{
public:
    static int f(int a, int b)
    {
        return a + b;
    }
};

// functional objects
class B
{
public:
    int operator()(int a, int b)
    {
        return a + b;
    }
};

// functions
int f(int a, int b)
{
    return a + b;
}

int main(int argc, char** argv)
{
    // lambda expressions
    auto l = [](int a, int b) -> int {
        return a + b;
    };

    caller(1, 2, A::f); // 3
    caller(3, 4, B()); // 7
    caller(5, 6, f); // 11
    caller(7, 8, l); // 15

    return 0;
}

