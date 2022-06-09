Regex_Pattern = '(\S)(?!\1)'

print !!(gets =~ /#{Regex_Pattern}/)