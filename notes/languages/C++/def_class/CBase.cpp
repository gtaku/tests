#include "CBase.h"

CBase::CBase(): m_number(0)
{
}

CBase::CBase(const CBase& base): m_number(base.get())
{
}

CBase::CBase(const int number): m_number(number)
{
}

CBase::~CBase()
{
}

CBase* CBase::add(const int number)
{
    m_number += number;
    return this;
}

CBase* CBase::set(const int number)
{
    m_number = number;
    return this;
}

int CBase::get() const
{
    return m_number;
}

