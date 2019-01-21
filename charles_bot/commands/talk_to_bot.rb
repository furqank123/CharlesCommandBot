module CharlesBot
	module Commands
		class GetMessage < SlackRubyBot::Commands::Base
			command 'Run ESPN Android' do |client,data,_match|
				client.say(text:'Please wait a moment while I fetch the results', channel: data.channel)
				client_two =  Slack::Web::Client.new
				user = data.user
				system("bash charles.sh ESPN Android")
				client_two.files_upload(
					channels: data.channel,
					file: Faraday::UploadIO.new('/Users/littlefish/IdeaProjects/CharlesCommandBot/session.chls',' '),
					title: 'Logs from Charles.',
					initial_comment: "Here are your logs <@#{user}>, Thank you for your patience!"
				)
			end
		end
	end
end

