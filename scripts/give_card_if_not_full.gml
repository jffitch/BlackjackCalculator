if (dealer.dealing_animation > 10) {
    exit;
    }
var target = player_num(argument0);
if ((argument0 == 6 && dealer.second_card) || (argument0 != 6 && target.hand[1]!=-1) || (argument0 != 6 && argument0 > dealer.number_of_players)) {
    dealing_to++;
    exit;
    }
dealer.dealing_animation = 23;
dealer.deal_target = argument0;
dealer.sprite_shown = asset_get_index("dealer_hold_"+string(dealer.deal_target));
