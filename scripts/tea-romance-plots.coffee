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
      'The host of a vibrant literary salon',
      'A rock star who\'s just in town for one night',
      'A couple of Navy SEAL seal shifters',
      'Two mermaids who have never left their underwater home',
      'The prince of a totally believable island country in Western Europe',
      'A couple of hitchhikers who just need a ride to San Francisco',
      'A wizard and a scientist who are both developing love potions',
      'An admin assistant who is actually in corporate espionage',
      'A cyborg who\'s never been programmed to love',
      'A player who has vowed never to settle down',
      'A girl so like all the other girls she gets amnesia looking in a mirror',
      'Two wealthy heiresses who spend their days in opulent seclusion',
      'The sexiest librarian ever to don a cardigan and glasses',
      'A dog walker with allergies',
      'A warrior princess from another dimension',
      'Bond, Jamie Bond (one of 007\'s many abandoned offspring)',
      'A gossip columnist for the hottest scandal sheet in town',
      'A master swordswoman seeking an apprentice',
      'The polyamorous wife of a hibernating bear shifter',
      'A bride who\'s just been left at the altar',
      'The next up and coming rodeo champion of Wyoming',
      'A Duke who is rich in land but not in love',
      'The anonymous author of a series of scandalous novels',
      'A reclusive bonsai artist',
      'A woman disguised as her seafaring brother',
      'The owner of an Instagram-famous cat',
      'The last remaining High Priest of an ancient god',
      'An artist whose work routinely shocks critics and museum-goers alike',
      'A caterer who always blends into the background at fancy events',
      'A truck driver who looks just like his famous cousin',
      'A musician couple seeking a third member of their band ... and their marriage',

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
      'an undercover mushroom enforcement agent',
      'a mild-mannered accountant who\'s never summoned a demon before',
      'a statue that\'s just come to life',
      'the developer of a brilliant app everyone downloads',
      'a down-on-their-luck poker player',
      'a rabbi running from the mob',
      'the director of a rabbit rescue society',
      'an impoverished gentlewoman trying to avoid becoming a governess',
      'a single parent looking for the perfect prom dress for their daughter',
      'a theater director seeking their perfect Hamlet',
      'a birdwatcher looking for a rare Crested Onyx Flybeak',
      'a professor deciphering an ancient manuscript',
      'a TV weather forecaster',
      'a fifth-generation distiller guarding her family\'s secret moonshine recipe',
      'a life coach with ailing parents',
      'a race car driver hiding their liberal political beliefs',
      'Baphomet, taking a sabbatical from the kingdom of darkness,',
      'a time-travelling architect',
      'a notoriously hard-to-please restaurant critic',
      'a theater makeup artist',
      'THRAEZEON, SKULLPRINCE OF THE DARKWASTES',
      'an international jewel thief in disguise as a Belgian nun',
      'a kindhearted country veterinarian',
      'a noble Lady in disguise as a peasant boy',
      'an octogenarian who just wants to tend his herb garden',
      'Karen from accounting',
      'a fashion designer whose latest show tragically flopped',
      'a librarian who rolls her eyes at the \'sexy librarian\' trope',
      'a pirate who sets their beard on fire to intimidate their foes'
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
      'just want to run their fingers down one another\'s spines',
      'are stuck in a malfunctioning elevator',
      'find themselves accidentally booked into the same hotel suite',
      'are planning his sister\'s wedding together',
      'are seated at the singles table at a circus-themed wedding',
      'wake up one morning in a hotel room wearing wedding rings',
      'are victims of a evil scientist\'s sexperiment',
      'run into each other ... literally',
      'are hired to narrate a steamy audiobook together',
      'share adjoining jail cells after a protest march',
      'find themselves on the same team on a game show',
      'must save the wetlands from greedy developers',
      'keep getting matched on a dating site',
      'reach for the last remaining tube of Luscious Raspberry lipstick at the same time',
      'have never met, but are locked in a battle to beat each other\'s high scores in pinball', 
      'just need to distract the paparazzi',
      'share an impulsive New Year\'s kiss',
      'find themselves attempting the same jewel heist one night',
      'reunite twenty years after their first kiss at basketball camp',
      'find their half-elf rogue and dwarf cleric growing closer during a D&D campaign',
      'accidentally release a genie and are granted three wishes ... together',
      'are involved in a laboratory accident with unexpected results',
      'must hide from a vengeful ex',
      'don\'t realize they\'re locked in a vicious Wikipedia edit war with each other until their identities are revealed',
      'never thought they\'d meet again after that disastrous fourth grade spelling bee, but here they are',
      'feel a strange connection when they accidentally touch hands',
      'receive a mysterious prophecy from a psychic',
      'pool their finances to buy a racehorse',
      'are waylaid by highwaymen',
      'bond over their mutual love of an obscure 1970s fantasy series',
      'fall for each other\'s onstage personas',
      'meet when their dogs\' leashes get tangled together',
      'team up to write and illustrate a graphic novel',
      'are partnered in a three-legged race',
      'are each other\'s sworn enemies',
      'are, unbeknownst to each other, entering their third year of anonymous correspondence',
      'have known each other since childhood, but only admit their feelings years later',
      'disguise themselves as royalty to attend a ball',
      'must share the jackpot after playing the same lottery numbers',
      'can\'t believe they\'ve just run into one another AGAIN',
      'seek one another\'s fashion advice',
      'inspire one another in their Afrofuturist writers\' group',
      'enter an arms race of increasingly complicated coffee orders',
      'strongly disagree in their book club but get along just fine under the sheets',
      'finally take one another\'s masks off',
      'are trapped in a miles-long check-out queue'
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
      'in a high-end pastry shop',
      'on a ghost ship off the Cape of Good Hope',
      'in the narrow swath of Brooklyn that isn\'t gentrified yet',
      'at a comic book convention',
      'In a haunted mountain ghost town',
      'on a planet much like ours, but purple and orange',
      'at a Starbucks somewhere in suburban America',
      'in the middle of the Louvre',
      'under the shadow of a witchy moon',
      'deep within the transit tunnels under Tokyo',
      'adjacent to, but not inside, a druid stone circle on Beltane',
      'in the tallest building in the world',
      'in a crumbling castle',
      'aboard a luxe private jet',
      'at a haunted bowling alley',
      'while locked in a candy store overnight together',
      'at the penguin exhibit at the zoo',
      'in a stationery supply warehouse',
      'at the optometrist',
      'on a runway during Fashion Week',
      'in the library of a grand estate',
      'in the costume shop of a theater',
      'at the local boxing gym',
      'while waiting for a midnight release of the last Harry Potter book',
      'at a Christmas tree farm',
      'at RenFest',
      'at the local aquarium',
      'on 6th Street in Austin, Texas,', 
      'in the bleachers at their children\'s Little League game',
      'in a cyberpunk dystopia',
      'at a 24-hour diner in Topeka'
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
      'They were prepared for anything ... except love',
      'Will they ....? They already did',
      'Before long, they’re sharing not just meals, but secrets, kisses, and heated nights together',
      'Will the map to the hidden treasure lead straight to their hearts?',
      'Can they unite to win the battle against the zombies ... and for each other?',
      'Will their dreams collide, or does this nightmare have a happy ending?',
      'Can they bond ... before the next full moon reveals their secrets?',
      'Does Fate have it in for them, or are the good fairies on their side?',
      'Can they steer their stolen pirate ship to safety, without wrecking on the rocks of heartbreak?',
      'Can they escape the rumors surrounding them and show the truth of their relationship and love to the world?',
      'Sparks fly ... or is that just faulty wiring?',
      'Their passion is enough to sustain them, but is it enough to save the kingdom?',
      'Will nights of passion distract them from making a breakthrough physics discovery?',
      'Can they agree on a shelving system for their combined libraries?',
      'Are they prepared for a lifetime of caring for a plot moppet ... and each other?',
      'Their genders are fluid, but is their love solid?',
      'Will this night owl and this early bird ever meet at high noon?',
      'But one of them has a secret that could tear their newfound passion apart',
      'Their love survives a trip back in time, but can it survive another?',
      'Things get hot and heavy ... maybe a little TOO hot and heavy',
      'They gathered together in front of a congregation. Will anyone object to their union?',
      'And then they take their pants off',
      'Will they finally let their guard down and learn to live...with passion?'
    ]

    robot.hear /toastbot romance/i, (res) ->
        firstPers = res.random firstPerson
        secondPers = res.random secondPerson
        meetCute = res.random romanceScenario
        setting = res.random romanceSetting
        follows = res.random whatFollows
        res.send "#{firstPers} and #{secondPers} #{meetCute} #{setting}. #{follows}..."
