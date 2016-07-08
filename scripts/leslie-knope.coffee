# Description:
#   Leslie Knope compliment generator


module.exports = (robot) ->

    knopeCompliments = [ 
      'You beautiful, sophisticated newborn baby', 
      'You\'re a genius! Your brain is almost as perfect as your face.', 
      'You poetic and noble land mermaid.', 
      'You\'re such a good friend. You are a beautiful, talented, brilliant, powerful musk ox.', 
      'You perfect sunflower.', 
      'You are the greatest human being ever invented.', 
      'I fully support any person\'s decision - especially a beautiful unicorn-nurse like yourself.', 
      'You\'re too beautiful to be funny.', 
      'What is more cuterus than your uterus?', 
      'That\'s a lie; you always look beautiful.', 
      'You beautiful spinster. I will find you love.', 
      'You cunning, pliable, chestnut-haired sunfish.', 
      'You\'re thoughtful and you\'re brilliant.', 
      'You devious bastard.', 
      'There\'s nothing harder in the entire world than saying no to your beautiful face.', 
      'You tricky minx.', 
      'You\'re so brilliant and kind and stupid hot.', 
      'You beautiful rule-breaking moth.', 
      'You tricky bastard.', 
      'You are the most beautiful sun deity ever.', 
      'You\'re so sweet and innocent and pretty.', 
      'You\'re beautiful and you\'re organized!', 
      'Nobody can fill your shoes with your tiny little doll feet.', 
      'You coy bastard.', 
      'You beautiful tropical fish.', 
      'You are the smartest, most accomplished person I know.' 
    ]

    robot.hear /classic knope/i, (res) ->
        res.send res.random knopeCompliments
