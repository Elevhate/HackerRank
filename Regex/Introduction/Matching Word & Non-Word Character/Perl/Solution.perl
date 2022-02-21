$Regex_Pattern = '\w{3}\W\w{10}\W\w{3}';

$Test_String = <STDIN> ;
if($Test_String =~ /$Regex_Pattern/){
    print "true";
} else {
    print "false";
}