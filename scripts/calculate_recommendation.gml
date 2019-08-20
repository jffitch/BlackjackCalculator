if (total == 22) {
    return "N/A";
    }
var win_tie_if_hit = win_if_hit + tie_if_hit/2;
var win_tie_if_stand = win_if_stand + tie_if_stand/2;
if ((dealer.purchases[0] || instance_exists(table_window))&& argument0) {
    var win_tie_if_split = win_if_split + tie_if_split/2;
    }
var should_hit = (win_tie_if_hit > win_tie_if_stand || total <= 11)

if ((dealer.purchases[0] || instance_exists(table_window)) && argument0 && win_tie_if_split > max(win_tie_if_stand/2 + 25, win_tie_if_hit/2 + 25, win_tie_if_hit)) {
    return "SPLIT";
    }

if (win_tie_if_hit > max(50, win_tie_if_stand/2 + 25) && hand[2] == -1){
    if (should_hit) {
        return "DOUBLE";
        }
    return "DOUBLE?";
    }
if (should_hit) {
    return "HIT";
    }
return "STAND";
