module CharlesBot
	class Bot < SlackRubyBot::Bot
		help do
			title 'Charles Bot'
			desc 'This bot performs some automation shenanigans'


			command 'Run ESPN Android' do 
				desc 'Runs a charles session on an Android device while playing a video on ESPN'
			end

			command 'Run ESPN iOS' do
				desc 'Runs a charles session on an iOS device while playing a video on ESPN'
			end

			command 'Run Twitch Android' do
				desc 'Runs a charles session on an Android device while playing a video on Twitch'
			end

			command 'Run Twitch iOS' do
				desc 'Runs a charles session on an iOS device while playing a video on Twitch'
			end

			command 'Run Netflix Android' do
				desc 'Runs a charles session on an Android device while playing a video on Netflix'
			end

			command 'Run Netflix iOS' do
				desc 'Runs a charles session on an iOS device while playing a video on Netflix'
			end
		end
	end
end