# toastbot greeting.
#
# (hi|hello) - say hi to toastbot

module.exports = (robot) ->
  robot.respond /hi|hello|hey/i, (msg) ->
	    msg.send "Greetings, Toastie!"
