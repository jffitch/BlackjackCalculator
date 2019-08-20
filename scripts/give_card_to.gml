var target = player_num(argument0);
if (dealer.dealing_animation > 10) {
    exit;
    }
if ((argument0 == 0 && dealer.second_card) || (argument0 != 0 && target.hand[8]!=-1) || dealer.number_of_players < argument0) {
    exit;
    }
dealer.dealing_animation = 23;
dealer.deal_target = argument0;
dealer.sprite_shown = asset_get_index("dealer_hold_"+string(dealer.deal_target));
