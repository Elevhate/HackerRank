$Regex_Pattern = '^[a-z][123456789][^a-z][^A-Z][A-Z]\s*';

$Test_String = <STDIN> ;
if($Test_String =~ /$Regex_Pattern/){
    print "true";
} else {
    print "false";
}