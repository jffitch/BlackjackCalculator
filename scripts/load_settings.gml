if (file_exists("settings.json")) {
    var i, settings_map;
    settings_map = ds_map_secure_load("settings.json");
    dealer.number_of_players = settings_map[? "players"];
    dealer.number_of_decks = settings_map[? "decks"];
    dealer.hit_on = settings_map[? "hit"];
    dealer.hit_on_soft = settings_map[? "hit_soft"];
    dealer.save_main = settings_map[? "save_main"];
    dealer.save_used = settings_map[? "save_used"];
    for (i=0; i<=10; i++) {
        dealer.cards_removed[i] = settings_map[? "removed_" + string(i)];
        }
    ds_map_destroy(settings_map);
    }
