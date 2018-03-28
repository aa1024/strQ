/  
@docStart
@desc String helper functions
@func sc,sf,zf,tu,tl,tstr,cc
@docEnd
\

\d .str

/camel case
cc:{ 
    x:trim ssr[;;" "]/[x;("-";"_")]; //replace hyphens and underscore
    x:?[-1=deltas s:" "=x; upper x;lower x ];  
    x where not[s]
 }

/swap case
sc:{?[x=lower x;upper x;lower x]}

/space fill
sf:{neg[x]$string y}

/zero fill
zf:{"0"^neg[x]$string y}

/to upper
tu:upper

/to lower
tl:lower

/to string
/Convert the nested structures to string using -3! 
tstr:{:$[10h=type x; x;0>type x;string x;-3!x]}
