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


/Convert the nested structures to string using -3! 
toString:{:$[10h=type x; x;0>type x;string x;-3!x]}
/toString[`$"String"]
/toString[`$"c"]
/toString[`s]
/toString[10]
/toString[(0b;1i;2j;3f;`4;"5")]
/toString([] i: 1 2 3 4)