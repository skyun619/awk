BEGIN   { printf "Name\tMath\tPhysics\tChem\tAvg\n" }
        { count++;
          math += $2; phy += $3; chem += $4;
          avg = ($2 + $3 + $4)/3;
          printf "%s\t%d\t%d\t%d\t%.1f\n", $1, $2, $3, $4, avg;
        }
END     { if (count>0) {
                math /= count; phy /= count; chem /= count;
                printf "(Avg)\t%.1f\t%.1f\t%.1f\n", math, phy, chem;
          }
        }
