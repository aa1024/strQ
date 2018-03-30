repoQ:getenv `QREPO;

import:{ x:(),x; r:0N!x!.sys.importLib each x;:0N!r}

.sys.importLib:{@[ { value "\\l ", repoQ,"\\libs\\",string[x],".q";1b} ;x;{show x;0b}]}

-1"***** Loaded Bootstrap File *****";
