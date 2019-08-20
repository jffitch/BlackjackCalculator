var i;
with (dealer) {
    cards_removed[0] = 0;
    for (i=1; i<=10; i++) {
        cards_removed[0] += cards_removed[i];
        }
    cards_left[0] = number_of_decks * 52 - (first_card > 0) - cards_removed[0];
    for (i=1; i<=9; i++) {
        cards_left[i] = number_of_decks * 4 - (first_card == i) - cards_removed[i];
        }
    cards_left[10] = number_of_decks * 16 - (first_card == 10) - cards_removed[10];
    
    with (player) {
        for (i=0; i<9; i++) {
            if (hand[i] != -1) {
                dealer.cards_left[hand[i]]--;
                dealer.cards_left[0]--;
                }
            }
        }
    }
