BEGIN   { print "Scanning file .. " }	
        { line++;  word += NF }	
END     { print "lines =", line, "words =", word }
