var i, j, old_total, old_soft;

win_if_stand = 0;
tie_if_stand = 0;
lose_if_stand = 0;
win_if_hit = 0;
tie_if_hit = 0;
lose_if_hit = 0;
bust_if_hit = 0;
old_total = total;
old_soft = soft;
    
for (i=dealer.hit_on+1; i<=22; i++) {
    switch(win_result(total, i)) {
        case "WIN": win_if_stand += dealer.chance_of[i]; break;
        case "BUST": case "LOSE": lose_if_stand += dealer.chance_of[i]; break;
        case "TIE": tie_if_stand += dealer.chance_of[i]; break;
        }
    for (j=1; j<=10; j++) {
        switch (win_result(new_total(j), i)) {
            case "WIN": win_if_hit += dealer.chance_of[j*argument0, i] * dealer.cards_left[j] / dealer.cards_left[0]; break;
            case "BUST": bust_if_hit += dealer.chance_of[j*argument0, i] * dealer.cards_left[j] / dealer.cards_left[0]; 
            case "LOSE": lose_if_hit += dealer.chance_of[j*argument0, i] * dealer.cards_left[j] / dealer.cards_left[0]; break;
            case "TIE": tie_if_hit += dealer.chance_of[j*argument0, i] * dealer.cards_left[j] / dealer.cards_left[0]; break;
            }
        }
    }

fix_win_chance();

total = old_total;
soft = old_soft;



