\d .unittest

/@function init @desc Creates a local table and stores the test results generated in @@assert function
/@returns     @desc 
init:{ .unittest.report:([] fuct:`$()  ; test_res:`boolean$() ; params:() ; exp_res:();act_res:() ); }

init[];

/@function assert @desc assert function 
/   @param fn   @desc function name
/   @param p    @desc parameters to the function
/   @param r   @desc expected results
/@returns tr    @desc test results
assert:{[fn;p;r]
    //res:$[1=count p;@[ value fn; first p;{`$x}] ;.[value fn; p ;{`$x}]];
    res:$[1=count p;.[ value fn; p;{`$x}] ;.[value fn; p ;{`$x}]];
    tr:res~r;
    `.unittest.report upsert (fn;tr;enlist p; enlist r;enlist res);
    tr
 }

/@function results @desc returns the test results
/@returns     @desc 
results:{ :.unittest.report } 
   
  
 
