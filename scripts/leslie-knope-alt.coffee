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
        'amuse bouche',
        'baton twirler',
        'breadcrumb',
        'cable modem',
        'coral reef',
        'dandelion',
        'deity',
        'electromagnet',
        'elf',
        'feminist',
  			'fish',
        'geode',
        'galaxy',
        'helicopter',
        'hero',
        'icee',
        'iguana',
        'jewel',
        'jumprope',
        'kitten',
        'knight',
        'lima bean',
        'lion tamer',
        'lobster',
        'mainframe hacker',
        'merperson',
        'monument',
        'moppet',
        'narwhal',
        'nanobot',
        'ocelot',
        'octagon',
        'parrot',
        'penguin',
        'phonograph',
        'pinwheel',
        'pokemon',
        'polar bear',
  			'possum',
        'puppeteer',
        'puppy',
        'quartz',
        'quadratic formula',
        'rutabaga',
        'rhododendron',
        'smallbear',
        'space traveler',
        'stargazer',
        'sunflower',
        'superconductor',
        'teapot',
        'time traveler',
        'topiary',
        'trapeze artist',
        'treasure',
        'turtle',
        'unicyclist',
        'unicorn',
        'vector',
        'vestibule',
        'whale watcher',
        'wharfmaster',
        'xylophone',
        'yoda',
        'yacht',
        'zenith',
        'zephyr'
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
