var i, settings_map;
settings_map = ds_map_create();
ds_map_add(settings_map, "players", if2(dealer.save_main, dealer.number_of_players, 1));
ds_map_add(settings_map, "decks", if2(dealer.save_main, dealer.number_of_decks, 5));
ds_map_add(settings_map, "hit", if2(dealer.save_main, dealer.hit_on, 16));
ds_map_add(settings_map, "hit_soft", if2(dealer.save_main, dealer.hit_on_soft, 16));
ds_map_add(settings_map, "save_main", dealer.save_main);
ds_map_add(settings_map, "save_used", dealer.save_used);
for (i=0; i<=10; i++) {
    ds_map_add(settings_map, "removed_" + string(i), if2(dealer.save_used, dealer.cards_removed[i], 0));
    }
ds_map_secure_save(settings_map, "settings.json");
ds_map_destroy(settings_map);
