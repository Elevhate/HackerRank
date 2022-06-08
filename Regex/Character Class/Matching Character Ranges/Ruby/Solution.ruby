Regex_Pattern = '^[a-z][123456789][^a-z][^A-Z][A-Z]\s*'

print !!(gets =~ /#{Regex_Pattern}/)