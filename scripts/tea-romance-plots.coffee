# Description:
#   Romance novel plot generator
#
# Commands:
#   "toastbot romance" - toastbot will respond with a romance novel plot
#
# Author:
#   @hannah


module.exports = (robot) ->

    firstPerson = [
      'A viking who has been dead for 1,000 years',
      'A cyborg with a heart of gold',
      'A bed-and-breakfast owner',
      'A werewolf who has never known the thrill of the hunt',
      'A brilliant witch, the last of her kind,',
      'An investment banker starting to get burnt out on her job',
      'A Scottish highlander more comfortable without a shirt',
      'A talented NASA programmer',
      'A magician whose powers are more trouble than they\'re worth'
    ]

    secondPerson = [
      'a brilliant neuroscientist who has just made an important scientific discovery',
      'a quiet shop owner who moonlights as an amateur detective',
      'the Ton\'s most sought-after debutante',
      'a time-traveling llama shifter',
      'a gentle-spirited cowboy with a troubled past',
      'a Duke whose fortune was gambled away',
      'a journalist used to uncovering corruption',
      'a reformed billionare committed to giving away his ill-gotten fortune',
      'a young widow of means',
      'the host of one of the internet\'s most popular podcasts'
    ]

    romanceScenario = [
      'bump into each other',
      'catch one another\'s eyes across a crowded room',
      'end up in bed together for what seems like a one-night stand',
      'find themselves solving a mystery together',
      'are forced to work together',
      'are rushed into a marriage of convenience',
      'encounter each other across space and time',
      'must navigate how to care for an adorable moppet together',
      'just want to escape their controlling families',
      'are forced to fight in a deadly battle for the future of all humanity'
    ]

    romanceSetting = [
      'in a coffee shop',
      'in a rustic Montana town',
      'in a remote cabin in the woods',
      'aboard a pirate ship'
      'over the counter at a feminist bookstore',
      'at a small, family-style Italian restaurant in Providence',
      'in the furthest known reaches of outer space',
      'in a post-apocalyptic Six Flags theme park',
      'on the set of a game show that\'s a thinly veiled version of Jeopardy',
      'in Ancient Rome',
      'at the local botanical gardens',
      'at a possibly haunted mansion'
    ]

    whatFollows = [
      'Hijinks and frick-frack ensue',
      'Will they? Or will they',
      'They instantly hate each other. But with a passion too strong for hate',
      'What starts as professional courtesy soon turns into something more',
      'They\'ll only be together for a short time. But will a fling satisfy their desires'
    ]

    robot.hear /toastbot romance/i, (res) ->
        firstPers = res.random firstPerson
        secondPers = res.random secondPerson
        meetCute = res.random romanceScenario
        setting = res.random romanceSetting
        follows = res.random whatFollows
        res.send "#{firstPers} and #{secondPers} #{meetCute} #{setting}. #{follows}..."
