/you/   { next; }
/round/ { exit; }
        { print NR, $0; }
END     { print "End of processing" }
