$Regex_Pattern = '(?<![aeiouAEIOU]).';

$Test_String = <STDIN> ;
if($Test_String =~ /$Regex_Pattern/){
    print "true";
} else {
    print "false";
}