Regex_Pattern = '(?<![aeiouAEIOU]).'

print !!(gets =~ /#{Regex_Pattern}/)