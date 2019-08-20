with (player_num(argument0)) {
    if (argument1 > 0) {
        count[hand[argument1]]--;
        }
    hand[argument1] = -1;
    var i;
    for (i=argument1+1; hand[i]!=-1; i++) {
        hand[i-1] = hand[i];
        hand[i] = -1;
        }
    card_total(0);
    }
