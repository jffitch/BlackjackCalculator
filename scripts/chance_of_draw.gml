var cards_matching;
cards_matching = if2(argument0 == 10, 16, 4) * number_of_decks - count[argument0]; // total amount of cards in deck matching target number, minus amount of target number already in dealer's hand
with (player) {
    cards_matching -= count[argument0]; // subtract amount of target number already held by each player
    }
if ((hand[0] == 1 && hand[1] == -1 && argument0 == 10) || (hand[0] == 10 && hand[1] == -1 && argument0 == 1)) {
    cards_matching = 0; // if first card is 1, second card cannot be 10; if first card is 10, second card cannot be 1
    }
return (cards_matching);
