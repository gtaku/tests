#include <iostream>
#include <string>

using namespace std;

template<typename T>
class Foo
{
public:
    T value;
    Foo() {}
    Foo(const T& ref): value(ref) {}
    Foo(const Foo<T>& ref): value(ref.value) {}
    void copy(const T& ref)
    {
        value = ref;
    }
    const T* pointer() const
    {
        return &value;
    }
};

int main(int argc, char** argv)
{
    Foo<int> foo1;
    foo1.copy(10);
    cout << foo1.value << endl; // 10

    Foo<char> foo2('A');
    cout << foo2.value << endl; // A

    string str = "foo";
    Foo<string> foo3(str);
    str.append("bar");
    cout << str << endl; // foobar
    cout << foo3.value << endl; // foo
    cout << &str << endl; // 0x7fff595d1a48
    cout << foo3.pointer() << endl; // 0x7fff595d1a30

    Foo<string> foo4("baz");
    Foo<string> foo5 = foo4;
    foo5.copy("qux");
    cout << foo4.value << endl; // baz
    cout << foo5.value << endl; // qux

    return 0;
}

