/  
@desc String helper functions tests
\

\d .strTests

import `str`unittest;

//Snakecase test
.unittest.assert[`.str.sc; enlist "An example of Snake case" ; "An_example_of_Snake_case"];

//Train case test
.unittest.assert[`.str.tc; enlist "An example of Train case" ; "An-example-of-Train-case"];

//Camelcase test
.unittest.assert[`.str.cc; enlist "camel-case_function_TEST" ; "camelCaseFunctionTest"];
.unittest.assert[`.str.cc;enlist "Another Test";"anotherTest"];

//Uncamelcase test
.unittest.assert[`.str.ucc;enlist "addSpaceBetweenCamelCase";"add space between camel case" ];

//underscore
.unittest.assert[`.str.us;enlist "underscoreSeperatedText";"underscore_seperated_text"];

//swapcase test
.unittest.assert[`.str.fc;enlist "FlipCase";"fLIPcASE"];

.unittest.assert[`.str.sf; (3;12);" 12"];

.unittest.assert[`.str.zf;(4;72);"0072"];

.unittest.assert[`.str.tu;enlist "To Upper Case";"TO UPPER CASE"];
.unittest.assert[`.str.tu;enlist `Upper;`UPPER];


.unittest.assert[`.str.tl;enlist "To Lower Case"; "to lower case"];
.unittest.assert[`.str.tl;enlist `Lower;`lower];


.unittest.assert[`.str.tstr;enlist`$"String";"String"];
.unittest.assert[`.str.tstr;enlist`$"c";enlist["c"]];
.unittest.assert[`.str.tstr;enlist`s;enlist["s"]];
.unittest.assert[`.str.tstr;enlist 10;"10"];
.unittest.assert[`.str.tstr;enlist(0b;1i;2j;3f;`4;"5");"(0b;1i;2;3f;`4;\"5\")"];
.unittest.assert[`.str.tstr;enlist ([] i: 1 2 3 4);"+(,`i)!,1 2 3 4"];

.unittest.results[]