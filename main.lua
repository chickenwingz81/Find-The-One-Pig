function love.load()
	player= {}
	player.x= 300
	player.y= 300
	player.pig= love.graphics.newImage("Farm/pig.png")

	--[Drawing a cow]
cow ={}
	cow.x= 200
	cow.y= 300
	cow.sprite= love.graphics.newImage("Farm/cow2.png")  

   --[Structuring Farmhouse]

   farmhouse={}

   farmhouse.x=200
   farmhouse.y=200
   farmhouse.sprite= love.graphics.newImage("Farm/farmhouse.png")

   --[Drawing Trees]

   tree= {}
   tree.x= 390
   tree.y = 200
   tree.sprite= love.graphics.newImage("Farm/Pines.png")

 tree1= {}
 tree1.x = 410
 tree1.y= 100
 tree1.sprite= love.graphics.newImage("Farm/Pines.png")  

 tree2={}
 tree2.x= 600
 tree2.y=360
 tree2.sprite= love.graphics.newImage("Farm/Pines.png")

 tree3={}
 tree3.x= 100
 tree3.y= 390
 tree3.sprite= love.graphics.newImage("Farm/Pines.png")
 --[Drawing Background]

background={}

background= love.graphics.newImage("Farm/greenbackground.jpg")

--[Variable For Score & Making New Font]

score =0

myFont= love.graphics.newFont(25)

love.graphics.setFont(myFont)
end


function love.draw()
	love.graphics.draw(background,0,0)
	love.graphics.draw(farmhouse.sprite,100, 300)
	love.graphics.draw(player.pig, player.x, player.y)
	love.graphics.draw(cow.sprite, cow.x, cow.y)

  --[Drawing Trees]
	love.graphics.draw(tree.sprite, tree.x, tree.y)
	love.graphics.draw(tree1.sprite, tree1.x, tree1.y)
	love.graphics.draw(tree2.sprite, tree2.x, tree2.y)
  love.graphics.draw(tree3.sprite, tree3.x, tree3.y)
     
     --[Printing Score]
	love.graphics.print(score)
    
	
end

--[Controls For Game]

function love.mousepressed(x,y,b, istouch)

  if b==1 then
  score = score+1

   player.x= math.random(0, love.graphics.getWidth())
   player.y = math.random(0, love.graphics.getHeight())
   end
end
