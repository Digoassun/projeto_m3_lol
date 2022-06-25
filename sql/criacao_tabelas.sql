CREATE TABLE `matchinfo` (
  `address` varchar(255) PRIMARY KEY,
  `liga` varchar(50),
  `ano` varchar(50),
 `time_azul` varchar(50),
 `resultado_azul` varchar(50),
 `resultado_vermelho` varchar(50),
 `time_vermelho` varchar(50),
 `duracao` varchar(50),
 `top_azul` varchar(50),
 `top_azulChamp` varchar(50),
 `jungle_azul` varchar(50),
 `jungle_azulChamp` varchar(50),
 `mid_azul` varchar(50),
 `mid_azulChamp` varchar(50),
 `adc_azul` varchar(50),
 `adc_azulChamp` varchar(50),
 `suporte_azul` varchar(50),
 `suporte_azulChamp` varchar(50),
 `top_verm` varchar(50),
 `top_vermChamp` varchar(50),
 `jungle_verm` varchar(50),
 `jungle_vermChamp` varchar(50),
 `mid_verm` varchar(50),
 `mid_vermChamp` varchar(50),
 `adc_verm` varchar(50),
 `adc_vermChamp` varchar(50),
 `suporte_verm` varchar(50),
 `suporte_vermChamp` varchar(50)
);

CREATE TABLE `kills` (
  `id_kill` int PRIMARY KEY AUTO_INCREMENT,
  `address_kills` varchar(255),
  `minutagem_morte` varchar(50),
  `vitima` varchar(50),
  `assassino` varchar(50),
  `assistencia_um` varchar(50),
  `assistencia_dois` varchar(50),
  `assistencia_tres` varchar(50),
  `assistencia_quatro` varchar(50)
);

CREATE TABLE `bans` (
  `id_ban` int PRIMARY KEY AUTO_INCREMENT,
  `address_ban` varchar(255),
  `primeiro_ban` varchar(50),
  `segundo_ban` varchar(50),
  `terceiro_ban` varchar(50),
  `quarto_ban` varchar(50),
  `quinto_ban` varchar(50)
);

CREATE TABLE `structures` (
  `id_structure` int PRIMARY KEY AUTO_INCREMENT,
  `address_structures` varchar(255),
  `minutagem_estrutura` varchar(50),
  `lane` varchar(50),
  `tipo_estrutura` varchar(50)
);

CREATE TABLE `monsters` (
  `id_monster` int PRIMARY KEY AUTO_INCREMENT,
  `address_monster` varchar(255),
  `tipo_dragao` varchar(50)
);