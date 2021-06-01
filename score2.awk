BEGIN   { print "Name\tMax_Score" }
        {
          max = $2
          for (i=3; i<=NF; i++) {
                if ($i > max) max = $i;
          }
          print $1 "\t" max;
        }
