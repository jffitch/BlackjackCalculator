var fix_value;

fix_value = (win_if_stand + tie_if_stand + lose_if_stand) / 100;
if (fix_value != 0) {
    win_if_stand /= fix_value;
    tie_if_stand /= fix_value;
    lose_if_stand /= fix_value;
    }

fix_value = (win_if_hit + tie_if_hit + lose_if_hit) / 100;
if (fix_value != 0) {
    win_if_hit /= fix_value;
    tie_if_hit /= fix_value;
    lose_if_hit /= fix_value;
    bust_if_hit /= fix_value;
    }
