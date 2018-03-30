\d .unittest

init:{ .unittest.results:([] fuct:`$() ; params:() ; expRes:();actRes:() ; testRes:`boolean$() ); }

/@function assert @desc assert function 
/   @param fn   @desc function name
/   @param p    @desc parameters to the function
/   @result r   @desc expected results
/@returns tr    @desc test results
assert:{[fn;p;r]
    res:$[1=count p;@[ value fn; first p;{`$x}] ;.[value fn; p ;{`$x}]];
    tr:res~r;
    `.unittest.results upsert (fn;enlist p; enlist r;enlist res;tr);
    tr
 }

results:{ :.unittest.results }
   
   
  
 
