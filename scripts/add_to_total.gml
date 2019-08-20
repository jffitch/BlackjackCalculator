var i, ace;
ace = false;
for (i=0; i<argument_count; i++) {
    total += argument[i];
    if (!ace && argument[i] == 1) {
        ace = true;
        }
    }
if (ace && total <= 11) {
    total += 10;
    soft = true;
    }
if (soft && total > 21) {
    total -= 10;
    soft = false;
    }
if (total > 22) {
    total = 22;
    }
