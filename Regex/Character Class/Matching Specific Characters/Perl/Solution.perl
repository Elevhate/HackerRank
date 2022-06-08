$Regex_Pattern = '^[123][120][xs0][30Aa][xsu][\.,]$';

$Test_String = <STDIN> ;
if($Test_String =~ /$Regex_Pattern/){
    print "true";
} else {
    print "false";
}