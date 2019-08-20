var a, b, c, d, e, f, g, i, j, totalx, softx, prob, total_prob, numer, denom, fix_value, next_player_card;
total = 0;
soft = false;
add_to_total(first_card);
totalx[0]= total;
softx[0] = soft;

calculate_cards_left();

for (i=12; i<=22; i++) {
    for (j=0; j<=10*argument0; j++) {
        chance_of[j, i] = 0;
        }
    }

for (next_player_card = 0; next_player_card <= 10*argument0; next_player_card++) {
    if (next_player_card != 0) {
        cards_left[next_player_card]--;
        cards_left[0]--;
        //ini_open("Player_Draws_"+string(next_player_card)+".ini");
        }
        else {
        //ini_open("Player_Stands.ini");
        }
    for (a=1; a<=10; a++) {
        numer = 100 * cards_left[a];
        denom = cards_left[0];
        if (first_card == 1) {
            denom -= cards_left[10];
            if (a == 10) {
                numer = 0;
                }
            }
        if (first_card == 10) {
            denom -= cards_left[1];
            if (a == 1) {
                numer = 0;
                }
            }
        
        prob[0] = numer / denom;
        
        total = totalx[0];
        soft = softx[0];
        add_to_total(a);
        totalx[1] = total;
        softx[1] = soft;
        
        if (prob[0] != 0) {
            if (dealer_stands()) {
                chance_of[next_player_card, total] += prob[0];
                //ini_write_string(string(total), "Dealer_Hand("+string(first_card)+", "+string(a)+")", "This Hand: "+string_format(prob[0], 0, 6)+", Total: "+string_format(chance_of[next_player_card, total], 0, 6));
                }
            else {
                for (b=1; b<=10; b++) {
                    prob[1] = (cards_left[b] - (b == a)) / (cards_left[0] - 1);
                    
                    total = totalx[1];
                    soft = softx[1];
                    add_to_total(b);
                    totalx[2] = total;
                    softx[2] = soft;
                    
                    total_prob[1] = prob[0] * prob[1];
                    if (dealer_stands()) {
                        chance_of[next_player_card, total] += total_prob[1];
                        //ini_write_string(string(total), "Dealer_Hand("+string(first_card)+", "+string(a)+", "+string(b)+")", "This Hand: "+string_format(total_prob[1], 0, 6)+", Total: "+string_format(chance_of[next_player_card, total], 0, 6));
                        }
                    else {
                        for (c=1; c<=10; c++) {
                            prob[2] = (cards_left[c] - (c == a) - (c == b)) / (cards_left[0] - 2);
                            
                            total = totalx[2];
                            soft = softx[2];
                            add_to_total(c);
                            totalx[3] = total;
                            softx[3] = soft;
                            
                            total_prob[2] = total_prob[1] * prob[2];
                            if (dealer_stands()) {
                                chance_of[next_player_card, total] += total_prob[2];
                                //ini_write_string(string(total), "Dealer_Hand("+string(first_card)+", "+string(a)+", "+string(b)+", "+string(c)+")", "This Hand: "+string_format(total_prob[2], 0, 6)+", Total: "+string_format(chance_of[next_player_card, total], 0, 6));
                                }
                            else {
                                for (d=1; d<=10; d++) {
                                    prob[3] = (cards_left[d] - (d == a) - (d == b) - (d == c)) / (cards_left[0] - 3);
                                    
                                    total = totalx[3];
                                    soft = softx[3];
                                    add_to_total(d);
                                    totalx[4] = total;
                                    softx[4] = soft;
                                    
                                    total_prob[3] = total_prob[2] * prob[3];
                                    if (dealer_stands()) {
                                        chance_of[next_player_card, total] += total_prob[3];
                                        //ini_write_string(string(total), "Dealer_Hand("+string(first_card)+", "+string(a)+", "+string(b)+", "+string(c)+", "+string(d)+")", "This Hand: "+string_format(total_prob[3], 0, 6)+", Total: "+string_format(chance_of[next_player_card, total], 0, 6));
                                        }
                                    else {
                                        for (e=1; e<=10; e++) {
                                            prob[4] = (cards_left[e] - (e == a) - (e == b) - (e == c) - (e == d)) / (cards_left[0] - 4);
                                            
                                            total = totalx[4];
                                            soft = softx[4];
                                            add_to_total(e);
                                            totalx[5] = total;
                                            softx[5] = soft;
                                            
                                            total_prob[4] = total_prob[3] * prob[4];
                                            if (dealer_stands()) {
                                                chance_of[next_player_card, total] += total_prob[4];
                                                //ini_write_string(string(total), "Dealer_Hand("+string(first_card)+", "+string(a)+", "+string(b)+", "+string(c)+", "+string(d)+", "+string(e)+")", "This Hand: "+string_format(total_prob[4], 0, 6)+", Total: "+string_format(chance_of[next_player_card, total], 0, 6));
                                                }
                                            else {
                                                for (f=1; f<=10; f++) {
                                                    prob[5] = (cards_left[f] - (f == a) - (f == b) - (f == c) - (f == d) - (f == e)) / (cards_left[0] - 5);
                                                    
                                                    total = totalx[5];
                                                    soft = softx[5];
                                                    add_to_total(f);
                                                    totalx[6] = total;
                                                    softx[6] = soft;
                                                    
                                                    total_prob[5] = total_prob[4] * prob[5];
                                                    if (dealer_stands()) {
                                                        chance_of[next_player_card, total] += total_prob[5];
                                                        //ini_write_string(string(total), "Dealer_Hand("+string(first_card)+", "+string(a)+", "+string(b)+", "+string(c)+", "+string(d)+", "+string(e)+", "+string(f)+")", "This Hand: "+string_format(total_prob[5], 0, 6)+", Total: "+string_format(chance_of[next_player_card, total], 0, 6));
                                                        }
                                                    else {
                                                        for (g=1; g<=10; g++) {
                                                            prob[6] = (cards_left[g] - (g == a) - (g == b) - (g == c) - (g == d) - (g == e) - (g == f)) / (cards_left[0] - 6);
                                                            
                                                            total = totalx[6];
                                                            soft = softx[6];
                                                            add_to_total(g);
                                                            
                                                            total_prob[6] = total_prob[5] * prob[6];
                                                            if (dealer_stands()) {
                                                                chance_of[next_player_card, total] += total_prob[6];
                                                                //ini_write_string(string(total), "Dealer_Hand("+string(first_card)+", "+string(a)+", "+string(b)+", "+string(c)+", "+string(d)+", "+string(e)+", "+string(f)+", "+string(g)+")", "This Hand: "+string_format(total_prob[6], 0, 6)+", Total: "+string_format(chance_of[next_player_card, total], 0, 6));
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    if (next_player_card != 0) {
        cards_left[next_player_card]++;
        cards_left[0]++;
        }
    //ini_close();
    }
for (j=0; j<=10*argument0; j++) {
    fix_value = 0;
    for (i=12; i<=22; i++) {
        fix_value += chance_of[j, i];
        }
    if (fix_value != 0) {
        for (i=12; i<=22; i++) {
            chance_of[j, i] *= (100 / fix_value);
            }
        }
    }
