require 'rubygems'
require 'twilio-ruby'


account_sid = "ACd25da99f6d14e9eafbc33bf65580d7c1"
auth_token = "ad38ff1393cef229a065b17df81ec30d"
 
@client = Twilio::REST::Client.new(account_sid, auth_token)



puts ("Ask a question?")
question = gets.chomp



random_num = rand(1..20)

random_array = ['It is certain.',
'It is decidedly so.',
'Without a doubt.',
'Yes - definitely.',
'You may rely on it.',
'As I see it, yes.',
'Most likely.',
'Outlook good.',
'Yes.',
'Signs point to yes.',
'Reply hazy, try again.',
'Ask again later.',
'Better not tell you now.',
'Cannot predict now.',
'Concentrate and ask again.',
"Don't count on it.",
'My reply is no.',
'My sources say no.',
'Outlook not so good.',
'Very doubtful.']


message = @client.api.account.messages.create(
  :from => "+19543711070", 
  :to => "+13035183555", 
  :body => "Your answer to the question: " + question + " is: " + random_array[random_num]
)
 
puts message.to

