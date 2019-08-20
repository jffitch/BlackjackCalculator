var fix_value, i;
if (dealer.first_card == 1) {
    fix_value = dealer.cards_left[0] - dealer.cards_left[10] + 1;
    dealer.cards_left[0]++;
    for (i=1; i<=9; i++) {
        dealer.cards_left[i] *= fix_value / (fix_value - 1);
        }
    }
if (dealer.first_card == 10) {
    fix_value = dealer.cards_left[0] - dealer.cards_left[1] + 1;
    dealer.cards_left[0]++;
    for (i=2; i<=10; i++) {
        dealer.cards_left[i] *= fix_value / (fix_value - 1);
        }
    }

