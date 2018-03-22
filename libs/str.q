/  
@docStart
@desc String helper functions
@docEnd
\

toUpper:upper
/toUpper["To Upper Case"]
/toUpper[`Upper]

toLower:lower
/toLower["To Lower Case"]
/toLower[`Lower]

toString:{:$[10h=type x; x;0>type x;string x;.Q.s1 x]}
/toString[`$"String"]
/toString[`$"c"]
/toString[`s]
/toString[10]
/toString[(10;12;1b)]
