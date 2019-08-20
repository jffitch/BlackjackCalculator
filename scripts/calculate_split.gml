var n, old_win_if_stand, old_tie_if_stand, old_lose_if_stand, old_win_if_hit, old_tie_if_hit, old_lose_if_hit, old_bust_if_hit, prob, old_total, old_soft;

win_if_split = 0;
tie_if_split = 0;
lose_if_split = 0;
    
old_win_if_stand = win_if_stand;
old_tie_if_stand = tie_if_stand;
old_lose_if_stand = lose_if_stand;
old_win_if_hit = win_if_hit;
old_tie_if_hit = tie_if_hit;
old_lose_if_hit = lose_if_hit;
old_bust_if_hit = bust_if_hit;
old_total = total;
old_soft = soft;
for (n=1; n<=10; n++) {
    while (n <= 10 && dealer.cards_left[n] <= 0) {
        n++;
        }
    if (n > 10) {
        break;
        }
    prob = dealer.cards_left[n] / dealer.cards_left[0]; 
    dealer.cards_left[n]--;
    dealer.cards_left[0]--;
    total = 0;
    soft = false;
    add_to_total(hand[0], n);
    calculate_win_chance(false);
    if (n == 1 || win_if_stand + tie_if_stand / 2 > win_if_hit + tie_if_hit / 2) {
        win_if_split += prob * win_if_stand;
        tie_if_split += prob * tie_if_stand;
        lose_if_split += prob * lose_if_stand;
        }
    else {
        win_if_split += prob * win_if_hit;
        tie_if_split += prob * tie_if_hit;
        lose_if_split += prob * lose_if_hit;
        }
    dealer.cards_left[n]++;
    dealer.cards_left[0]++;
    }   
   
win_if_stand = old_win_if_stand;
tie_if_stand = old_tie_if_stand;
lose_if_stand = old_lose_if_stand;
win_if_hit = old_win_if_hit;
tie_if_hit = old_tie_if_hit;
lose_if_hit = old_lose_if_hit;
bust_if_hit = old_bust_if_hit;
total = old_total;
soft = old_soft;
