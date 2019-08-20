var i;
if (dealer.first_card <= 0) {
    return "incomplete";
    }
with (player) {
    if (num <= dealer.number_of_players) {
        for(i=0; i<9; i++) {
            if (hand[i] == 0) {
                return "incomplete";
                }
            }
        }
    }
for (i=1; i<=10; i++) {
    if (dealer.cards_left[i] < 0) {
        return "too many";
        }
    }
return "ready";
