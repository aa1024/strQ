/  
@docStart
@desc String helper functions
@func sc,sf,zf,tu,tl,tstr,cc,ucc,us
@docEnd
\

\d .str

/@function us @desc Camel case to Underscore separated 
/   @param string in camel case form
/@returns underscore separated text
us:{lower "_"sv cut[0,where[x=upper x]; x]}

/@function cc @desc To camel case
/   @param String containing underscores, hyphens or spaces
/@returns Camel case string
cc:{ 
    x:trim ssr[;;" "]/[x;("-";"_")]; //replace hyphens and underscore
    x:?[-1=deltas s:" "=x; upper x;lower x ];  
    x where not[s]
 }

/@function ucc @desc Uncamelcase - Camel case to space separated text
/   @param String Camel case string
/@returns Space separated string
ucc:{ lower trim raze cut[0,where[x=upper[x]] ; x],\:" " }

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