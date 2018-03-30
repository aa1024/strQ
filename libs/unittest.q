\d .unittest

init:{ .unittest.results:([] fuct:`$() ; params:() ; expRes:();actRes:() ; testRes:`boolean$() ); }

/function name, params,results
assert:{[fn;p;r]
    res:$[1=count p;@[ value fn; first p;{`$x}] ;.[value fn; p ;{`$x}]];
    tr:res~r;
    `.unittest.results upsert (fn;enlist p; enlist r;enlist res;tr);
    tr
 }


   
   
  
 
