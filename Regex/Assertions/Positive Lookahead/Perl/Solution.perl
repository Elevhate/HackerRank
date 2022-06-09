$Regex_Pattern = '^[^\d][^aeiou][^bcDF][^\s][^AEIOU][^\.,]$';

$Test_String = <STDIN> ;
if($Test_String =~ /$Regex_Pattern/){
    print "true";
} else {
    print "false";
}