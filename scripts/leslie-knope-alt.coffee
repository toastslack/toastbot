# Description:
#   Leslie Knope style random compliment generator
#
# Commands:
#   knope me - reply to sender with a Leslie Knope style compliment
#   knope @someone - reply with a Leslie Knope style compliment for @someone
#
# Author:
#   @hungrier.robot


module.exports = (robot) ->

    firstAdjectives = [
        'adventurous',
        'affectionate',
        'ambitious',
        'amicable',
        'brave',
        'broad-minded',
        'communicative',
        'conscientious',
        'convivial',
        'courteous',
        'decisive',
        'diligent',
        'discreet',
        'easygoing',
        'energetic',
        'exuberant',
        'faithful',
        'forceful',
        'friendly',
        'generous',
        'good',
        'hard-working',
        'honest',
        'imaginative',
        'independent',
        'intelligent',
        'inventive',
        'loving',
        'modest',
        'nice',
        'passionate',
        'persistent',
        'pioneering',
        'plucky',
        'powerful',
        'pro-active',
        'quiet',
        'reliable',
        'resourceful',
        'self-confident',
        'sensible',
        'shy',
        'sociable',
        'sympathetic',
        'tidy',
        'versatile',
        'willing'
    ]

    secondAdjectives = [
        'adaptable',
        'affable',
        'agreeable',
        'amiable',
        'amusing',
        'bright',
        'calm',
        'charming',
        'compassionate',
        'considerate',
        'courageous',
        'creative',
        'determined',
        'diplomatic',
        'dynamic',
        'emotional',
        'enthusiastic',
        'fair-minded',
        'fearless',
        'frank',
        'funny',
        'gentle',
        'gregarious',
        'helpful',
        'humorous',
        'impartial',
        'intellectual',
        'intuitive',
        'kind',
        'loyal',
        'neat',
        'optimistic',
        'patient',
        'philosophical',
        'placid',
        'polite',
        'practical',
        'quick-witted',
        'rational',
        'romantic',
        'self-disciplined',
        'sensitive',
        'sincere',
        'straightforward',
        'thoughtful',
        'tough',
        'understanding',
        'warmhearted',
        'witty'
    ]

    nouns = [
  			'anteater',
  			'fish',
  			'possum',
        'penguin',
        'polar bear',
        'puppy',
        'kitten',
        'lima bean',
        'rutabaga',
        'dandelion',
        'sunflower',
        'pokemon',
        'elf',
        'moppet',
        'deity',
        'merperson',
        'space traveler',
        'teapot',
        'breadcrumb',
        'smallbear',
        'lobster',
        'parrot',
        'monument',
        'treasure',
        'phonograph',
        'time traveler',
        'pinwheel',
        'trapeze artist',
        'lion tamer',
        'puppeteer',
        'topiary',
        'nomad',
        'cable modem',
        'stargazer',
        'mainframe hacker',
        'unicyclist',
        'turtle',
        'feminist',
        'baton twirler',
        'geode',
        'superconductor',
        'electromagnet'
    ]

    robot.hear /knope (@?\w+)/i, (res) ->	
        send = false
        target = res.match[1]

        if target.lastIndexOf('me', 0) is 0
            send = true
            targetName = res.message.user.name
        else if target.lastIndexOf('@', 0) is 0
            send = true
            targetName = target
               
        if send
            firstAdj = res.random firstAdjectives
            secondAdj = res.random secondAdjectives
            noun = res.random nouns
            res.send "Oh, #{targetName}, you #{firstAdj}, #{secondAdj} #{noun}."
