# Description:
#   Romance novel plot generator
#
# Commands:
#   toastbot romance me
#
# Author:
#   @hannah


module.exports = (robot) ->

    firstPerson = [
      'A viking who has been dead for 1,000 years',
      'A cyborg with a heart of gold',
      'A bed-and-breakfast owner',
      'A werewolf who has never known the thrill of the hunt',
      'A brilliant witch, the last of her kind,'
    ]

    secondPerson = [
      'a brilliant neuroscientist who has just made an important scientific discovery',
      'a quiet shop owner who moonlights as an amateur detective',
      'the Ton\'s most sought-after debutante',
      'a time-traveling llama shifter',
      'a gentle-spirited cowboy with a troubled past',
      'a Duke whose fortune was gambled away'
    ]

    romanceScenario = [
      'bump into each other',
      'catch one another\'s eyes across a crowded room',
      'end up in bed together for what seems like a one-night stand',
      'find themselves solving a mystery together'
    ]

    romanceSetting = [
      'in a coffee shop',
      'in a rustic Montana town',
      'in a remote cabin in the woods',
      'aboard a pirate ship'

    ]

    whatFollows = [
      'Hijinks and frick-frack ensue',
      'Will they? Or will they',
      'They instantly hate each other. But with a passion too strong for hate'
    ]

  robot.hear /toastbot romance/i, (res) ->
    if send
      firstPers = res.random firstPerson
      secondPers = res.random secondPerson
      meetCute = res.random romanceScenario
      setting = res.random romanceSetting
      follows = res.random whatFollows
      res.send "#{firstPers} and #{secondPers} #{meetCute} #{setting}. #{follows}..."
