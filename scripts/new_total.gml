var i, total2, soft2;
total2 = total;
soft2 = soft
for (i=0; i<argument_count; i++) {
    total2 += argument[i];
    if (!soft2 && argument[i] == 1 && total2 <= 11) {
        total2 += 10;
        soft2 = true;
        }
    if (soft2 && total2 > 21) {
        total2 -= 10;
        soft2 = false;
        }
    }
if (total2 > 22) {
    total2 = 22;
    }

return total2;
