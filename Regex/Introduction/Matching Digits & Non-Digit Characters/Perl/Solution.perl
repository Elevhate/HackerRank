$Regex_Pattern = '^\d{2}.\d{2}.\d{4}';

$Test_String = <STDIN> ;
if($Test_String =~ /$Regex_Pattern/){
    print "true";
} else {
    print "false";
}