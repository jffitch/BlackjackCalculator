// initialize list, individual purchases, and maps with each purchase’s values
var purchaseList, purchase0;
purchaseList = ds_list_create();
purchase0 = ds_map_create();

ds_map_add(purchase0, "id", "bjcalc_full_version");
ds_map_add(purchase0, "title", "Blackjack Calculator Full Version");
ds_map_add(purchase0, "description", "access to altering the deck, recommendation table, splitting, removing ads");
ds_map_add(purchase0, "price", string(dealer.price[0]));

ds_list_add(purchaseList, purchase0);

// activate purchases on list
iap_activate(purchaseList); 

// destroy maps and list that’s no longer needed
ds_map_destroy(purchase0);
ds_list_destroy(purchaseList);

