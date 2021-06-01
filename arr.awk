BEGIN {
        score["math"] = 50;
        score["physics"] = 80;
        score["chem"] = 90;
        score["project"] = "Pass";

        for (i in score) {
                print i "\t" score[i];
        }
      }
