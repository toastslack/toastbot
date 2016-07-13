# Description:
#  Toastbot says hello.
#
# Commands:
#  (hi|hello|hey) - reply with a greeting
#
# Author:
#  @hungrier.robot


module.exports = (robot) ->
  robot.respond /hi|hello|hey/i, (msg) ->
	    msg.send "Greetings, Toastie!"
