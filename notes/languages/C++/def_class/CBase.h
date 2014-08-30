#ifndef __CBASE_H__
#define __CBASE_H__

class CBase
{
public:
    CBase(); // Default constructor
    CBase(const CBase& base); // Copy constructor
    CBase(const int number); // a constructor
    virtual ~CBase(); // Destructor
    CBase* add(const int number);
    CBase* set(const int number);
    int get() const;
protected:
    int m_number;
};

#endif

