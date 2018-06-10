/# @package tests
/# @name strTests @desc String helper functions testcases

import `str`unittest;

.unittest.init[];

/# @bullet Snake case test
.unittest.assert[`.str.sc; enlist "An example of Snake case" ; "An_example_of_Snake_case"];

/# @bullet Train case test
.unittest.assert[`.str.stc; enlist "an example string" ; "An Example String"];

/# @bullet Start case test
.unittest.assert[`.str.tc; enlist "An example of Train case" ; "An-example-of-Train-case"];

/# @bullet Camelcase test
.unittest.assert[`.str.cc; enlist "camel-case_function_TEST" ; "camelCaseFunctionTest"];
.unittest.assert[`.str.cc;enlist "Another Test";"anotherTest"];

/# @bullet Uncamelcase test
.unittest.assert[`.str.ucc;enlist "addSpaceInCamelCase";"add Space In Camel Case" ];

/# @bullet To underscore separated string test
.unittest.assert[`.str.us;enlist "underscoreSeparatedText";"underscore_separated_text"];
.unittest.assert[`.str.us;enlist "space separated text";"space_separated_text"];

/# @bullet swapcase test
.unittest.assert[`.str.fc;enlist "FlipCase";"fLIPcASE"];

/# @bullet Space left fill test
.unittest.assert[`.str.sfl; (3;12);" 12"];
/# @bullet Space right fill test
.unittest.assert[`.str.sfr; (3;12);"12 "];

/# @bullet Space **block** left fill test
.unittest.assert[`.str.sflb; enlist (`a`bbb`cc);("  a";"bbb";" cc")];
/# @bullet Space **block** right fill test
.unittest.assert[`.str.sfrb; enlist (`a`bbb`cc);("a  ";"bbb";"cc ")];

/# @bullet Zero fill left test
.unittest.assert[`.str.zfl;(4;72);"0072"];
/# @bullet Zero fill right Test
.unittest.assert[`.str.zfr;(4;72);"7200"];

/# @bullet strif tests
.unittest.assert[`.str.strif;enlist`$"String";"String"];
.unittest.assert[`.str.strif;enlist`$"c";enlist["c"]];
.unittest.assert[`.str.strif;enlist`s;enlist["s"]];
.unittest.assert[`.str.strif;enlist 10;"10"];
.unittest.assert[`.str.strif;enlist(0b;1i;2j;3f;`4;"5");"(0b;1i;2;3f;`4;\"5\")"];
.unittest.assert[`.str.strif;enlist ([] i: 1 2 3 4);"+(,`i)!,1 2 3 4"];

