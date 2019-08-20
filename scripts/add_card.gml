if (object_index == player) {
    var i = 0;
    while (hand[i] != -1) {
        i++;
        }
    hand[i] = 0;
    }
if (object_index == dealer) {
    if (first_card == -1) {
        first_card = 0;
        }
    else {
        second_card = true;
        }
    }
