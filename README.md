# strQ

String helper functions - flip case, space fill, zero fill, camelcase, uncamelcase, underscore separated, snakecase, startcase, traincase

## stc
startcase "an example string" -> "An Example String"

    q).str.stc"start-case string"

## sc
Snakecase ; underscore separated text, but the case is preserverd

    q).str.sc "An example of Snake case"

## tc
Traincase : hyphen separated text , but the case is preserverd

    q).str.tc"An example of Train case"

## us
Camel case to lower case underscore separated

    q).str.us"spaceSeparated text"

## cc
To camel case

    q).str.cc"underscore_separated_text"

## ucc
Uncamelcase - Camel case to space separated text , case is preserved

    q).str.ucc"addSpaceInCamelCase"

## sfl
Space fill

    q).str.sfl (3;12)

## fc
Swap/Flip case

    q).str.fc"FlipCase"

## sfr
Space fill from right

    q).str.sfr (3;12)


## sflb
Space fill from left for list of strings

q).str.sflb (`a`bbb`cc)


## sfrb
Space fill from right for list of strings

    q).str.sfrb (`a`bbb`cc)


## zfl
zero fill

    q).str.zfl (4;72)


## zfr
zero fill from right

    q).str.zfr (4;72)


## strif
Converts the kdb objects to plain string

    q).str.strif[`test]
    q).str.strif[2#`test]
    q).str.strif[string `test]
    q).str.strif[string 2#`test]

