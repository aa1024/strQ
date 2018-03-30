repoQ:getenv `QREPO;

import:{  @[ { value "\\l ", repoQ,"\\libs\\",string[x],".q";1b} ;x;{show x;0b}]}

-1"***** Loaded Bootstrap File *****";
