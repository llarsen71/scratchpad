function rest(poke, length)
  poke.powerpoints = poke.powerpoints + length/2
  poke.health = poke.health + length

end

function pp(poke)
  print("----------------------------------------")
  print("Name:        " .. poke.name)
  print("Type:")
  for i = 1, #poke.type do
    print('    ' .. poke.type[i])
  end
  print("powerpoints: " .. poke.powerpoints)
  print("health: " .. poke.health)
  if poke.health < 1 then
    poke.status = "knocked out"
  end
  print("status:  " .. poke.status)
  print('number of attacks : ' .. #poke.attack)
  for i = 1, #poke.attack do
    print("   " .. poke.attack[i])
  end
  print('----------------------------------------')
  
  return 10
end

pokemon  = {type={"steel","ground"}, 
            powerpoints=5, 
            health=100,
            status="normal",
            name = "Steelix",
            attack={'tail whip','dig'}, 
            printme=pp, 
            rest=rest}
pokemon2 = {type={"water"}, 
            powerpoints = 3, 
            health=100,
            status="normal",
            name = "Piplup",
            attack={'bubble'}, 
            printme=pp, 
            rest=rest}
pokemon3 = {type={"electric"}, 
            powerpoints = 11, 
            health=0,
            status="normal",
            name = "Pikachu",
            attack={'thunder bolt','tackle'}, 
            printme=pp, 
            rest=rest} 

print("What is your pokemon's name?")
pokemon3.name = io.read()

pokemon:rest(10)
pokemon:printme()
pokemon2:rest(20)
pokemon2:printme()
pokemon3:rest(30)
pokemon3:printme()


function bob()
  return "This is bob's string"
end

result = bob()
print(result)