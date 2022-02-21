$Regex_Pattern = '^(...\.){3}...$';

$Test_String = <STDIN> ;
 
$Test_String =~ /$Regex_Pattern/g ? print 'true' : print 'false';