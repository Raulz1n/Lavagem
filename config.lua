_G.config = {};

config.locais = { -- lugares de lavegem do seu servidor
	{ -581.03,181.66,71.08 },
	{ -233.67,-332.18,30.1 },
	{ -1078.15,-260.48,37.82 }
}

config.npcs = { -- lugares do npc,  você pode o hash dos npc encontrar aqui: https://docs.fivem.net/docs/game-references/ped-models/
    { ['x'] = -581.03, ['y'] = 181.66, ['z'] = 71.08, ['h'] = 91.710395812988, ['hash'] = 0xC8BB1E52, ['hash2'] = "u_m_y_mani" }, -- -581.03,181.66,71.08
    { ['x'] = -233.67, ['y'] = -332.18, ['z'] = 30.1 , ['h'] = 99.495513916016, ['hash'] = 0xC8BB1E52, ['hash2'] = "u_m_y_mani" },  -- -233.67,-332.18,30.1
	{ ['x'] = -1078.15, ['y'] = -260.48, ['z'] = 37.82 , ['h'] = 205.84307861328, ['hash'] = 0xC8BB1E52, ['hash2'] = "u_m_y_mani" }, -- -1078.15,-260.48,37.82

}

config.perms = { -- permissao do seu servidor
    "lavagem.permissao",

} 

return config;