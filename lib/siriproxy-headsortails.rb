require 'cora'
require 'siri_objects'
require 'open-uri'
	
class SiriProxy::Plugin::HeadsorTails < SiriProxy::Plugin
  def initialize(config)
     
  end
  listen_for /heads or tails/i do |item|
     num = 1 + rand(10)
     if (num >= 5)
        side = "Heads"
        pic = "https://lh5.googleusercontent.com/-7GGTStgZUjU/Tyr5opnUNgI/AAAAAAAAAEE/CdTkkFyJAlI/s402/Heads1.jpg"#"https://lh4.googleusercontent.com/-mCf1MxPQvYo/Tyr5oyyWRaI/AAAAAAAAAEM/c0_uCnBEfMM/s351/Heads2.jpg"
     else (num < 5)
        side = "Tails"
        pic = "https://lh4.googleusercontent.com/-IdNCacRxQJ8/Tyr5onDnq3I/AAAAAAAAAEI/3pdwLHpxkNA/s402/Tails1.jpg"#"https://lh4.googleusercontent.com/-F8ZFh3apX4w/Tyr5pciAiqI/AAAAAAAAAEc/GbyJJdlVIOg/s351/Tails2.jpg"
     end
     object = SiriAddViews.new
     object.make_root(last_ref_id)
     answer = SiriAnswer.new("#{side}:", [SiriAnswerLine.new("coin",pic)])
     object.views << SiriAnswerSnippet.new([answer])
     say "#{side}"
     send_object object
     request_completed
  end
end
