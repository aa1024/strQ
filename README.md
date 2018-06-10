# codeQ

## codeQ/libs

Project for standalone libraries that can be loaded in a q session for :

1. Importing a library
2. Running tests for checking if there is any unintentional impact on the library during the development (system tests)
3. Resolving the dependencies among the liraries
4. String manipulation function
5. Query helper functions





.. index:: lib;str


.. _lib-str-label:

===
str
===

String helper functions - flip case, space fill, zero fill, camelcase, uncamelcase, underscore separated, snakecase, startcase, traincase

.. _lib-str-stc-label:


stc
~~~

startcase "an example string" -> "An Example String"

:param string: 

.. code-block:: R



    q).str.stc"start-case string"

.. _lib-str-sc-label:


sc
~~

Snakecase : underscore separated text , but the case is preserverd

:param string: 

:returns: underscore separated text without any case changes.

.. code-block:: R



    q).str.sc "An example of Snake case"

.. _lib-str-tc-label:


tc
~~

Traincase : hyphen separated text , but the case is preserverd

:param string: 

:returns: hyphen separated text without any case changes.

.. code-block:: R



    q).str.tc"An example of Train case"

.. _lib-str-us-label:


us
~~

Camel case to lower case underscore separated

:param x: string in camel case form

:returns: underscore separated text

.. code-block:: R



    q).str.us

.. _lib-str-cc-label:


cc
~~

To camel case

:param String: containing underscores, hyphens or spaces

:returns: Camel case string

.. code-block:: R



    q).str.cc"underscoreSeparatedText"

.. _lib-str-ucc-label:


ucc
~~~

Uncamelcase - Camel case to space separated text , case is preserved

:param String: Camel case string

:returns: Space separated string

.. code-block:: R



    q).str.ucc"addSpaceInCamelCase"

.. _lib-str-fc-label:


fc
~~

Swap/Flip case

:param String: 

:returns: String with case swapped

.. code-block:: R



    q).str.fc"FlipCase"

.. _lib-str-sfl-label:


sfl
~~~

Space fill

:param int: 
:param String: 

:returns: String left padded with space

.. code-block:: R



    q).str.sfl (3;12)

.. _lib-str-sfr-label:


sfr
~~~

Space fill from right

:param int: 
:param String: 

:returns: String right padded with space

.. code-block:: R



    q).str.sfr (3;12)

.. _lib-str-sflb-label:


sflb
~~~~

Space fill from left for list of strings

:param int: 
:param String: 

:returns: String left padded with space

.. code-block:: R



    q).str.sflb (`a`bbb`cc)

.. _lib-str-sfrb-label:


sfrb
~~~~

Space fill from right for list of strings

:param int: 
:param String: 

:returns: String right padded with space

.. code-block:: R



    q).str.sfrb (`a`bbb`cc)

.. _lib-str-zfl-label:


zfl
~~~

zero fill

:param int: 
:param String: 

:returns: String left padded with zero

.. code-block:: R



    q).str.zfl (4;72)

.. _lib-str-zfr-label:


zfr
~~~

zero fill from right

:param int: 
:param String: 

:returns: String right padded with zero

.. code-block:: R



    q).str.zfr (4;72)

.. _lib-str-strif-label:


strif
~~~~~

handle the simple case otherwise flaten it to string

.. code-block:: R



    q).str.strif[`test]
.. code-block:: R



    q).str.strif[2#`test]
.. code-block:: R



    q).str.strif[string `test]
.. code-block:: R



    q).str.strif[string 2#`test]
