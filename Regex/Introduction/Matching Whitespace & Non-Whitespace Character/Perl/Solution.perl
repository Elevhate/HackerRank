$Regex_Pattern = '(\S{2}\s){2}\S{2}';

$Test_String = <STDIN> ;
if($Test_String =~ /$Regex_Pattern/){
    print "true";
} else {
    print "false";
}