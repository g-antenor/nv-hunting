fx_version 'cerulean'
game 'gta5'

author 'niomeV2'
version '1.0.0'

lua54 'yes'

shared_script {
    '@ox_lib/init.lua',
    'config.lua'
}

client_scripts { 'client/*.lua' }

server_scripts { 'server/*.lua' }