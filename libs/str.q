/  
@docStart
@desc String helper functions
@docEnd
\

\d .str

/Leading space
ls:{neg[x]$string y}

/leading zero
lz:{"0"^neg[x]$string y}

/to upper
tu:upper

/to lower
tl:lower

/to string
/Convert the nested structures to string using -3! 
tstr:{:$[10h=type x; x;0>type x;string x;-3!x]}
