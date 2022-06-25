#Adicionando Foreign Keys

#Tabela monsters
ALTER TABLE monsters
add foreign key(address_monster)
references matchinfo(address);

#Tabela structures
ALTER TABLE structures
add foreign key(address_structures)
references matchinfo(address);

#Tabela bans
ALTER TABLE bans
add foreign key(address_ban)
references matchinfo(address);

#Tabela kills
ALTER TABLE kills
add foreign key(address_kills)
references matchinfo(address);