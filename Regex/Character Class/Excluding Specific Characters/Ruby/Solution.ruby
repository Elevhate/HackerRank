Regex_Pattern = '^[^\d][^aeiou][^bcDF][^\s][^AEIOU][^\.,]$'

print !!(gets =~ /#{Regex_Pattern}/)