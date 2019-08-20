var i;
total=argument0;
soft=false;
for (i=1; i<=10; i++){
    total += i * count[i];
    } 
if (total <= 11 && (count[1] != 0 || argument0 == 1)) {
    total += 10;
    soft = true;
    }
if (total > 22) {
    total = 22;
    }
