baseFolder:".";
import:{ x:(),x; r:0N!x!.sys.importLib each x;:r};
.sys.importLib:{@[ { value "\\l ", baseFolder,"/libs/",string[x],".q";1b} ;x;{show x;0b}]};

import `str;

system "l ",baseFolder,"/tests/strTests.q";
system "c 100 200";

show .unittest.results[]


/    c:\Code\Github\strQ>q run.q