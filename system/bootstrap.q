repoQ:getenv `QREPO;

import:{ x:(),x; x!.sys.importLib each x}

.sys.importLib:{@[ { value "\\l ", repoQ,"\\libs\\",string[x],".q";1b} ;x;{show x;0b}]}

-1"***** Loaded Bootstrap File *****";
