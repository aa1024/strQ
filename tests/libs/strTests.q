/  
@docStart
@desc String helper functions tests
@docEnd
\

\d .strTests

import `str

" 12"~.str.sf[3;12]

"0072"~.str.zf[4;72]

"TO UPPER CASE"~.str.tu["To Upper Case"]
`UPPER~.str.tu[`Upper]


"to lower case"~.str.tl["To Lower Case"]
`lower~.str.tl[`Lower]


"String"~.str.tstr[`$"String"]
enlist["c"]~.str.tstr[`$"c"]
enlist["s"]~.str.tstr[`s]
"10"~.str.tstr[10]
"(0b;1i;2;3f;`4;\"5\")"~.str.tstr[(0b;1i;2j;3f;`4;"5")]
"+(,`i)!,1 2 3 4"~.str.tstr([] i: 1 2 3 4)