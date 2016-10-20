def fluffy_bunny
  puts "You enter a dark room."
  puts "You hear a crunching sound."
  puts "You look up and see a GIANT FLUFFY BUNNY EATING GIANT CARROTS!"
  puts "What do you say to him?"

  print"> "
  speech = $stdin.gets.chomp
  if speech.downcase.include?("fat")
    dead("The GIANT RABBIT looks up and swaps you for his GIANT CARROT. Your head is bitten off.")
  elsif speech.downcase.include?("slim")
    puts "The GIANT RABBIT blushes and hops away looking very embarressed."
    leprachaun_room
  else
    dead("The GIANT RABBIT ignores you so you stumble around until you die.")
  end
end

def leprachaun_room
  puts "You enter a room full of leprachauns."
  puts "They are surrounded by pots of gold!"
  puts "The biggest of them tells you to answer a riddle"
  puts "He says 'Get it right and you can take the gold, get it wrong and we'll force feed you gold till you die!'"
  puts "'Poor people have it. Rich people need it. If you eat it you die. What is it?'"

  print "> "
  answer = $stdin.gets.chomp

  if answer.downcase.include?("nothing")
    puts "You leave a rich man! YOU WIN!"
    exit(0)
  else
    dead("WRONG. The Leprachauns force feed you gold until you die. You are however now worth a small fortune.")
  end
end

def crazy_axe_murderer
  puts "You enter a dimly lit room with walls covered in blood."
  puts "As the door closes behind you a man in a hockey mask weilding and axe jumps out!"
  puts "As you wee yourself the man in the axe starts laughing and offers you a cup of tea."
  puts "Do you accept?"

  print "> "
  reply = $stdin.gets.chomp

  if reply.downcase.include?("yes")
    dead("The once crazed axe murdered tells you tales of his murdery past, you're so intreged you sit there till you die.")
  elsif reply.downcase.include?("no")
    puts "You politely refuse and leave."
    start
  else
    dead("The murderer gets bored waiting for your reply and cuts your head off.")
  end
end

def roller_coaster
  puts "You enter a small room with an old roller coaster cart sitting on some tracks inside."
  puts "Do you get in and push the start button?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.downcase.include?("yes")
    puts "You go on an insane roller coaster ride that leads you to a door?"
    fluffy_bunny
  elsif choice.downcase.include?("no")
    puts "You turn around and leave the room."
    start
  else
    dead("Your indecision caused the floor to give way. The fall killed you.")
  end
end

def start
  puts "There is a door to your left and a door to your right, which do you take?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.downcase.include?("left")
    crazy_axe_murderer
  elsif choice.downcase.include?("right")
    roller_coaster
  else
    dead("You stumble around in the dark, fall on a pair of shears and accidently cut your own head off.")
  end
end

def dead(why)
  puts why + " Congratulations!"
  exit(0)
end

start 
