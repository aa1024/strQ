# strQ

String helper functions - flip case, space fill, zero fill, camelcase, uncamelcase, underscore separated, snakecase, startcase, traincase

stc
~~~

startcase "an example string" -> "An Example String"

:param x: String

.. code-block:: R



    q).str.stc"start-case string"

.. _lib-str-sc-label:


sc
~~

Snakecase : underscore separated text , but the case is preserverd

:param x: String

:returns: underscore separated text without any case changes.

.. code-block:: R



    q).str.sc "An example of Snake case"

.. _lib-str-tc-label:


tc
~~

Traincase : hyphen separated text , but the case is preserverd

:param x: String

:returns: hyphen separated text without any case changes.

.. code-block:: R



    q).str.tc"An example of Train case"

.. _lib-str-us-label:


us
~~

Camel case to lower case underscore separated

:param x: String in camel case form or space separated

:returns: underscore separated text

.. code-block:: R



    q).str.us"spaceSeparated text"

.. _lib-str-cc-label:


cc
~~

To camel case

:param x: String containing underscores, hyphens or spaces

:returns: Camel case string

.. code-block:: R



    q).str.cc"underscore_separated_text"

.. _lib-str-ucc-label:


ucc
~~~

Uncamelcase - Camel case to space separated text , case is preserved

:param x: Camel case string

:returns: Space separated string

.. code-block:: R



    q).str.ucc"addSpaceInCamelCase"

.. _lib-str-fc-label:


fc
~~

Swap/Flip case

:param x: String

:returns: String with case swapped

.. code-block:: R



    q).str.fc"FlipCase"

.. _lib-str-sfl-label:


sfl
~~~

Space fill

:param x: int
:param y: String

:returns: String left padded with space

.. code-block:: R



    q).str.sfl (3;12)

.. _lib-str-sfr-label:


sfr
~~~

Space fill from right

:param x: int
:param y: String

:returns: String right padded with space

.. code-block:: R



    q).str.sfr (3;12)

.. _lib-str-sflb-label:


sflb
~~~~

Space fill from left for list of strings

:param x: int
:param y: String

:returns: String left padded with space

.. code-block:: R



    q).str.sflb (`a`bbb`cc)

.. _lib-str-sfrb-label:


sfrb
~~~~

Space fill from right for list of strings

:param x: int
:param y: String

:returns: String right padded with space

.. code-block:: R



    q).str.sfrb (`a`bbb`cc)

.. _lib-str-zfl-label:


zfl
~~~

zero fill

:param x: int
:param y: String

:returns: String left padded with zero

.. code-block:: R



    q).str.zfl (4;72)

.. _lib-str-zfr-label:


zfr
~~~

zero fill from right

:param x: int
:param y: String

:returns: String right padded with zero

.. code-block:: R



    q).str.zfr (4;72)

.. _lib-str-strif-label:


strif
~~~~~

handle the simple case otherwise flaten it to string

:param x: String

:returns: Converts the kdb objects to plain string

.. code-block:: R



    q).str.strif[`test]
.. code-block:: R



    q).str.strif[2#`test]
.. code-block:: R



    q).str.strif[string `test]
.. code-block:: R



    q).str.strif[string 2#`test]

