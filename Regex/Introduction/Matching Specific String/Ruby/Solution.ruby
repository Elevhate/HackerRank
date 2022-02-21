Regex_Pattern = 'hackerrank'

Test_String = gets
regex = Test_String.scan /#{Regex_Pattern}/
print "Number of matches : ",regex.length