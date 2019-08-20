if (object_index == player || object_index == dealer) {
    return (argument0 mod 3) * 48 - 7;
    }
if (object_index == chooser) {
    return (argument0 mod 5) * 80 + 5;
    }
