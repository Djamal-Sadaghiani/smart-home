class EscalationService
    require 'telegram/bot'

    def perform
        chat_ids = [ENV['CHAT_ID_JD'], ENV['CHAT_ID_DJ'], ENV['CHAT_ID_HEL']]
        message = "Hello, the Bell just rang at: #{Bell.last&.created_at&.in_time_zone('Berlin')}"
        token = ENV['BOT_TOKEN']

        Telegram::Bot::Client.run(token) do |bot|
            chat_ids.each do |chat_id|
                bot.api.send_message(chat_id: chat_id, text: message)
            end
        end
    end

end
