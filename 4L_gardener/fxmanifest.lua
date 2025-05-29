fx_version 'cerulean'
games {'gta5'}
lua54 'yes'

author 'Life4tune'
description 'Garden Job'
version 'v0.0.1'

shared_scripts {
    '@es_extended/imports.lua',
    '@ox_lib/init.lua',
    'config.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/sv_main.lua'
}

client_script 'client/cl_main.lua'

dependencies {
    'es_extended',
    'oxmysql',
    'ox_lib'
}
