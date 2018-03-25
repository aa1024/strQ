/  
@docStart
@desc String helper functions
@docEnd
\

\d .str

/Leading space
ls:{neg[x]$string y}
//ls[3;12]

/leading zero
lz:{"0"^neg[x]$string y}
//lz[4;72]

/to upper
tu:upper
/tu["To Upper Case"]
/tu[`Upper]

/to lower
tl:lower
/tl["To Lower Case"]
/tl[`Lower]

/to string
/Convert the nested structures to string using -3! 
tstr:{:$[10h=type x; x;0>type x;string x;-3!x]}
/tstr[`$"String"]
/tstr[`$"c"]
/tstr[`s]
/tstr[10]
/tstr[(0b;1i;2j;3f;`4;"5")]
/tstr([] i: 1 2 3 4)