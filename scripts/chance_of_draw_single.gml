var i, cards_matching, cards_total;

for (i=1; i<=10; i++) {
    cards_matching[i] = if2(i == 10, 16, 4) * dealer.number_of_decks - (i == dealer.first_card); // initialize array with total amount of cards in deck matching each number, minus one for the dealer's card
    }
with (player) {
    for (i=1; i<=10; i++) {
        cards_matching[i] -= count[i]; // subtract amount of each number already held by each player
        }
    }
cards_total = 0;
for (i=1; i<=10; i++) {
    cards_total += cards_matching[i]; // total number of possible cards that can be drawn 
    }
return (cards_matching[argument0]/cards_total);
