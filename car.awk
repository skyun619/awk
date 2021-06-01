        { count[$1]++; }		
END     {
          for (name in count) {
                printf "%-12s %d\n", name, count[name];
          }
        }
