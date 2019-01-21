$LOAD_PATH.unshift(File.dirname(__FILE__)) 

require 'dotenv'
Dotenv.load


require 'charles_bot'

CharlesBot::Bot.run