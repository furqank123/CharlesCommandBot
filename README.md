# CharlesCommandBot

### Overview 

This bot was designed to take specific instructions from the user and execute the instructions accordingly via Slack. This bot also 
maintains its connection through WebSockets but does not utilize Slack's Real Time messaging APIs as efficiently. The library being utilized
is [slack-ruby-bot](https://github.com/slack-ruby/slack-ruby-bot) which does most of the work, it's built on top of 
[slack-ruby-client](https://github.com/slack-ruby/slack-ruby-client). This library enables us to write bot commands for a single
instance or team. 

### Purpose 

The purpose of this bot is to execute a command provided the user. A set of predefined commands are readily availble to the user
by typing 'help' or @botName help all the commands will be displayed in an orderly fashion. Based on the commands passed by
the bot will then execute a set of actions which will in turn provide the user with a charles session log.

### Execution 

Before we begin there are a few things that are required:

* Ruby - brew install ruby 
* Bundler - gem install bundler
* rack - a webserver interface
* appium Server - npm install -g appium
* Charles Proxy - Add Charles' path to your .bash_profile
* create a .env file and add SLACK_API_TOKEN=bot oAuthToken goes here
* In talk_to_bot.rb change the path in line 11 to wherever you will be cloning this project up until session.chls

Let's begin:
Start Charles and stop recording, run appium through terminal. To start the rack server execute the following:
- *bundle* - this will download all the dependencies required
- *bundle exec rackup* - This will spin up a server in the background and retain its connectivity through WebSocket.

If everything went smoothly the robot should be ready to use in any channel that it is part of and private messages.

List of Commands: 

Typing "help" or "@botName help" will provide you with a list of commands, below are the available commands:

<img width="756" alt="screenshot 2019-01-21 12 50 39" src="https://user-images.githubusercontent.com/24193787/51491085-43f7b180-1d7b-11e9-8fb6-2d3016292fbc.png">

As of now only "Run ESPN Android" command works. This will launch a charles session, run an automation session on android, 
monitor SSL/HTTPS traffic on ESPN and return the result. For example:
<img width="724" alt="screenshot 2019-01-21 12 56 53" src="https://user-images.githubusercontent.com/24193787/51491333-0c3d3980-1d7c-11e9-824b-b83b1ecd251e.png">
