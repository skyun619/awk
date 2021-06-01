BEGIN { printf("sum from 1 to 10  = %d\n", sum(10)); }
      {
        len = length($0);
        count(len);
        printf("%3d : %s\n", len, toupper($0));
      }
END   { printf("number of chars = %d\n", nchar); }

function sum(n) {		
        s = 0;
        for (i=1; i<=n; i++)
                s += i;
        return s;
}

function count(len) {
        nchar += len;	# nchar는 문자수를 계수하는 전역변수
}

