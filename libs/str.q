/  
@docStart
@desc String helper functions
@docEnd
\

\d .str

ls:{neg[x]$string y}
//ls[3;12]

lz:{"0"^neg[x]$string y}
//lz[4;72]

toUpper:upper
/toUpper["To Upper Case"]
/toUpper[`Upper]
/  
@docStart
@desc String helper functions
@docEnd
\

\d .str

ls:{neg[x]$string y}
//ls[3;12]

lz:{"0"^neg[x]$string y}
//lz[4;72]

tu:upper
/tu["To Upper Case"]
/tu[`Upper]


tl:lower
/tl["To Lower Case"]
/tl[`Lower]


/Convert the nested structures to string using -3! 
tstr:{:$[10h=type x; x;0>type x;string x;-3!x]}
/tstr[`$"String"]
/tstr[`$"c"]
/tstr[`s]
/tstr[10]
/tstr[(0b;1i;2j;3f;`4;"5")]
/tstr([] i: 1 2 3 4)

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
