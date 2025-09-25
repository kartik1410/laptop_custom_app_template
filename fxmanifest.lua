fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Kartik'
description 'Kartik Laptop Custom App Template'

shared_scripts {
    'config.lua'
}

client_scripts {
    'client/*.lua',
}

server_scripts {
    'server/*.lua',
}

files {
    'web/**/*',
    'web/*',
}

ui_page 'web/index.html'

dependencies {
    'kartik-laptop'
}