# -*- coding: utf-8 -*-

import sys, os
sys.path.append(os.path.dirname(__file__))

import myClasses.tests

foo = myClasses.tests.Foo(4)
foo.add(3)
print foo.get()

