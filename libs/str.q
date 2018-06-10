/# @package lib
/# @name str
/# @desc String helper functions - flip case, space fill, zero fill, camelcase, uncamelcase, underscore separated, snakecase, startcase, traincase

\d .str

/# @function stc startcase "an example string" -> "An Example String"
/#   @param x String
stc:{@[x;distinct 0,1+ss[trim x; " "];upper]}
/# @code q).str.stc"start-case string"


/# @function sc @desc Snakecase : underscore separated text , but the case is preserverd 
/#   @param x String
/#  @return underscore separated text without any case changes.
sc:{ ssr[x;" ";"_"] }
/# @code q).str.sc "An example of Snake case" 

/# @function tc @desc Traincase : hyphen separated text , but the case is preserverd 
/#   @param x String 
/#   @return hyphen separated text without any case changes.
tc:{ ssr[x;" ";"-"] }
/# @code q).str.tc"An example of Train case"

/# @function us @desc Camel case to lower case underscore separated 
/#   @param x String in camel case form or space separated 
/# @return underscore separated text
us:{lower sc  sv["_";vs[" ";ucc x] except enlist ""]}
/# @code q).str.us"spaceSeparated text"

/# @function cc @desc To camel case
/#   @param x String containing underscores, hyphens or spaces
/# @return Camel case string
cc:{ 
    x:trim ssr[;;" "]/[x;("-";"_")]; //replace hyphens and underscore
    x:?[-1=deltas s:" "=x; upper x;lower x ];  
    x where not[s]
 }
/# @code q).str.cc"underscore_separated_text"

/# @function ucc @desc Uncamelcase - Camel case to space separated text , case is preserved
/#   @param x Camel case string
/# @return Space separated string
ucc:{ trim raze cut[0,where[x=upper[x]] ; x],\:" " }
/# @code q).str.ucc"addSpaceInCamelCase"

/# @function fc @desc Swap/Flip case
/#    @param x String
/# @return String with case swapped
fc:{?[x=lower x;upper x;lower x]}
/# @code q).str.fc"FlipCase"

/# @function sfl @desc Space fill
/#    @param x int
/#    @param y String
/# @return String left padded with space
sfl:{neg[x]$string y}
/# @code q).str.sfl (3;12)

/# @function sfr @desc Space fill from right 
/#    @param x int
/#    @param y String
/# @return String right padded with space
sfr:{x$string y}
/# @code q).str.sfr (3;12)

/# @function sflb @desc Space fill from left for list of strings 
/#    @param x int
/#    @param y String
/# @return String left padded with space
sflb:{sfl[max count each string x] each x}
/# @code q).str.sflb (`a`bbb`cc)

/# @function sfrb @desc Space fill from right for list of strings 
/#    @param x int
/#    @param y String
/# @return String right padded with space
sfrb:{sfr[max count each string x] each x}
/# @code q).str.sfrb (`a`bbb`cc)

/# @function zfl @desc zero fill
/#    @param x int
/#    @param y String
/# @return String left padded with zero
zfl:{"0"^neg[x]$string y}
/# @code q).str.zfl (4;72)

/# @function zfr @desc zero fill from right
/#    @param x int
/#    @param y String
/# @return String right padded with zero
zfr:{"0"^x$string y}
/# @code q).str.zfr (4;72)

/# @function strif handle the simple case otherwise flaten it to string
/#    @param x String
/# @return Converts the kdb objects to plain string 
strif:{$[10h=t:type x;x; t=11h;string x;t<0;string x;.Q.s1 x]}
/# @code q).str.strif[`test]
/# @code q).str.strif[2#`test]
/# @code q).str.strif[string `test]
/# @code q).str.strif[string 2#`test]