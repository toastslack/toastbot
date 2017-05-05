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
      'A magician whose powers are more trouble than they\'re worth',
      'A mountain goat shifter commited to union organizing',
      'An astrophysicist who just wants tenure',
      'A baker seeking the recipe for the perfect baguette',
      'A rogue morel forager',
      'A chef who sells mushrooms on the black market',
      'A third-generation shrimp farmer',
      'The host of a vibrant literary salon'
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
      'the host of one of the internet\'s most popular podcasts',
      'a chess genius on the verge of winning the global championship',
      'Bhloodghrim Whrathfahng IV, son of Bhloodghrim Whrathfahng III',
      'a velociraptor shifter escaped from a government facility',
      'a chemist developing a love potion',
      'an undercover mushroom enforcement agent'
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
      'are forced to fight in a deadly battle for the future of all humanity',
      'find themselves bonding over a common cause',
      'agree to marry in order to inherit a fortune',
      'must safely land a damaged spacecraft on Planet X97-B',
      'discover they\'ve adopted puppies from the same litter',
      'are competing in a charity bake-off',
      'must co-direct a community production of A Midsummer Night\'s Dream',
      'are accidentally sent back in time',
      'are dating ... according to the tabloids',
      'spend one whirlwind night of passion together',
      'butt heads',
      'just want to run their fingers down one another\'s spines'
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
      'at a possibly haunted mansion',
      'in Butte, Montana',
      'at a Gatsby-style garden party',
      'during a vacation to an all-inclusive tropical resort',
      'at a classy and discreet BDSM club',
      'in a burnt out forest',
      'in a high-end pastry shop'
    ]

    whatFollows = [
      'Hijinks and frick-frack ensue',
      'Will they? Or will they',
      'They instantly hate each other. But with a passion too strong for hate',
      'What starts as professional courtesy soon turns into something more',
      'They\'ll only be together for a short time. But will a fling satisfy their desires',
      'Do they have what it takes to make it last?',
      'Can their love survive the approaching storm?',
      'It\'s love at first sight ... but is love enough?',
      'They were prepared for anything ... except love.',
      'Will they ....? They already did.'
    ]

    robot.hear /toastbot romance/i, (res) ->
        firstPers = res.random firstPerson
        secondPers = res.random secondPerson
        meetCute = res.random romanceScenario
        setting = res.random romanceSetting
        follows = res.random whatFollows
        res.send "#{firstPers} and #{secondPers} #{meetCute} #{setting}. #{follows}..."
