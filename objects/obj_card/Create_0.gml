global.upgrade_cards = ds_map_create();

var card_damage_pistol = ds_map_create();
ds_map_add(card_damage_pistol, "name", "Dano melhorado");
ds_map_add(card_damage_pistol, "sprite", card_d);
ds_map_add(card_damage_pistol, "description", "Aumenta o dano da pistola em +1.");
ds_map_add(card_damage_pistol, "index", 3); 
ds_map_add(card_damage_pistol, "value", 1);
ds_map_add(card_damage_pistol, "weapon_id", 1);
//adicionando ao mapa global
ds_map_add(global.upgrade_cards, "Dano melhorado", card_damage_pistol);


var card_penetration_pistol = ds_map_create();
ds_map_add(card_penetration_pistol, "name", "Perfuração");
ds_map_add(card_penetration_pistol, "sprite", card_p);
ds_map_add(card_penetration_pistol, "description", "Aumenta o dano da pistola em +1 inimigo.");
ds_map_add(card_penetration_pistol, "index", 7); 
ds_map_add(card_penetration_pistol, "value", 1);
ds_map_add(card_penetration_pistol, "weapon_id", 1);

ds_map_add(global.upgrade_cards, "Perfuração", card_penetration_pistol); 
