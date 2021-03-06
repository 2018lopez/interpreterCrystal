require "crsfml"

class DrawShape
  def self.draw
   
      # create the window
      window = SF::RenderWindow.new(SF::VideoMode.new(800, 600), "My window")

      # run the program as long as the window is open
      while window.open?
      # check all the window's events that were triggered since the last iteration of the loop
      while event = window.poll_event
        # "close requested" event: we close the window
        if event.is_a? SF::Event::Closed
          window.close
        end
      end

      # clear the window with black color
      window.clear(SF::Color::Black)

      liney = [
                SF::Vertex.new(SF.vector2(80, 40)),
                SF::Vertex.new(SF.vector2(80,500))
            ]

      liney.rotate(90)

      linex = [
            SF::Vertex.new(SF.vector2(80, 500)),
            SF::Vertex.new(SF.vector2(550,500))
        ]

        # create an array of 3 vertices that define a triangle primitive
        triangle = SF::VertexArray.new(SF::Triangles, 3)

        # define the positions and colors of the triangle's points
        triangle[0] = SF::Vertex.new(SF.vector2(400, 400), SF::Color::White)
        triangle[1] = SF::Vertex.new(SF.vector2(300, 300), SF::Color::White)
        triangle[2] = SF::Vertex.new(SF.vector2(200, 200), SF::Color::White)

        shape = SF::CircleShape.new(50)
        # set the shape color to green
        shape.fill_color = SF.color(100, 250, 50)
        shape.position = { 200, 300}

        # define a 120x50 rectangle
        rectangle = SF::RectangleShape.new(SF.vector2(120, 50))
        # change the size to 100x100
        rectangle.size = SF.vector2(100, 50)
        rectangle.position = { 400, 100}
       
        line1 = SF::RectangleShape.new(SF.vector2(30, 2))
        line1.position = {118, 485}
        line1.rotate(90)

        line2 = SF::RectangleShape.new(SF.vector2(30, 2))
        line2.position = {168, 485}
        line2.rotate(90)

        line3 = SF::RectangleShape.new(SF.vector2(30, 2))
        line3.position = {218, 485}
        line3.rotate(90)

        line4 = SF::RectangleShape.new(SF.vector2(30, 2))
        line4.position = {268, 485}
        line4.rotate(90)

        line5 = SF::RectangleShape.new(SF.vector2(30, 2))
        line5.position = {318, 485}
        line5.rotate(90)

        line6 = SF::RectangleShape.new(SF.vector2(30, 2))
        line6.position = {368, 485}
        line6.rotate(90)

        line7 = SF::RectangleShape.new(SF.vector2(30, 2))
        line7.position = {418, 485}
        line7.rotate(90)

        line8 = SF::RectangleShape.new(SF.vector2(30, 2))
        line8.position = {468, 485}
        line8.rotate(90)

        line9 = SF::RectangleShape.new(SF.vector2(30, 2))
        line9.position = {518, 485}
        line9.rotate(90)
         
        liney1 = SF::RectangleShape.new(SF.vector2(30, 2))
        liney1.position = {95, 465}
        liney1.rotate(180)

        liney2 = SF::RectangleShape.new(SF.vector2(30, 2))
        liney2.position = {95, 415}
        liney2.rotate(180)

        liney3 = SF::RectangleShape.new(SF.vector2(30, 2))
        liney3.position = {95, 365}
        liney3.rotate(180)

        liney4 = SF::RectangleShape.new(SF.vector2(30, 2))
        liney4.position = {95, 315}
        liney4.rotate(180)

        liney5 = SF::RectangleShape.new(SF.vector2(30, 2))
        liney5.position = {95, 265}
        liney5.rotate(180)

        liney6 = SF::RectangleShape.new(SF.vector2(30, 2))
        liney6.position = {95, 215}
        liney6.rotate(180)

        liney7 = SF::RectangleShape.new(SF.vector2(30, 2))
        liney7.position = {95, 165}
        liney7.rotate(180)

        liney8 = SF::RectangleShape.new(SF.vector2(30, 2))
        liney8.position = {95, 115}
        liney8.rotate(180)

        liney9 = SF::RectangleShape.new(SF.vector2(30, 2))
        liney9.position = {95, 65}
        liney9.rotate(180)
         
        
       # Declare and load a font
        font = SF::Font.from_file("./Ubuntu-M.ttf")

        # Create a ylabel and xlabel
        ylabel = SF::Text.new("Y Coordinate", font)
        ylabel.character_size = 20
        ylabel.style = SF::Text::Bold
        ylabel.color = SF::Color::Red
        ylabel.position = {40,200}
        ylabel.rotation = 90

        
         xlabel = SF::Text.new("x Coordinate", font)
         xlabel.character_size = 20
         xlabel.style = SF::Text::Bold
         xlabel.color = SF::Color::Red
         xlabel.position = {250, 550}

         #declare x cord 
         x1 = SF::Text.new("a", font)
         x1.character_size = 18
         x1.color = SF::Color::White
         x1.position = {110, 525}

         x2 = SF::Text.new("b", font)
         x2.character_size = 18
         x2.color = SF::Color::White
         x2.position = {160, 525}

         x3 = SF::Text.new("c", font)
         x3.character_size = 18
         x3.color = SF::Color::White
         x3.position = {210, 525}

         x4 = SF::Text.new("d", font)
         x4.character_size = 18
         x4.color = SF::Color::White
         x4.position = {260, 525}

         x5 = SF::Text.new("e", font)
         x5.character_size = 18
         x5.color = SF::Color::White
         x5.position = {310, 525}

         x6 = SF::Text.new("f", font)
         x6.character_size = 18
         x6.color = SF::Color::White
         x6.position = {360, 525}

         x7 = SF::Text.new("g", font)
         x7.character_size = 18
         x7.color = SF::Color::White
         x7.position = {410, 525}

         x8 = SF::Text.new("h", font)
         x8.character_size = 18
         x8.color = SF::Color::White
         x8.position = {460, 525}

         x9 = SF::Text.new("i", font)
         x9.character_size = 18
         x9.color = SF::Color::White
         x9.position = {510, 525}

         y1 = SF::Text.new("1", font)
         y1.character_size = 18
         y1.color = SF::Color::White
         y1.position = {50, 450}

         y2 = SF::Text.new("2", font)
         y2.character_size = 18
         y2.color = SF::Color::White
         y2.position = {50, 400}

         y3 = SF::Text.new("3", font)
         y3.character_size = 18
         y3.color = SF::Color::White
         y3.position = {50, 350}

         y4 = SF::Text.new("4", font)
         y4.character_size = 18
         y4.color = SF::Color::White
         y4.position = {50, 300}

         y5 = SF::Text.new("5", font)
         y5.character_size = 18
         y5.color = SF::Color::White
         y5.position = {50, 250}

         y6 = SF::Text.new("6", font)
         y6.character_size = 18
         y6.color = SF::Color::White
         y6.position = {50, 200}

         y7 = SF::Text.new("7", font)
         y7.character_size = 18
         y7.color = SF::Color::White
         y7.position = {50, 150}

         y8 = SF::Text.new("8", font)
         y8.character_size = 18
         y8.color = SF::Color::White
         y8.position = {50, 100}

         y9 = SF::Text.new("9", font)
         y9.character_size = 18
         y9.color = SF::Color::White
         y9.position = {50, 50}



         view = SF::View.new
         view.reset(SF.float_rect(100, 100, 400, 200))
         view.center()


  


       


      # draw everything here...
    
      window.draw(liney, SF::Lines)
      window.draw(linex,SF::Lines)
      window.draw(shape)
      window.draw(rectangle)
    
      window.draw(line1)
      window.draw(line2)
      window.draw(line3)
      window.draw(line4)
      window.draw(line5)
      window.draw(line6)
      window.draw(line7)
      window.draw(line8)
      window.draw(line9)

      window.draw(liney1)
      window.draw(liney2)
      window.draw(liney3)
      window.draw(liney4)
      window.draw(liney5)
      window.draw(liney6)
      window.draw(liney7)
      window.draw(liney8)
      window.draw(liney9)


      window.draw(x1)
      window.draw(x2)
      window.draw(x3)
      window.draw(x4)
      window.draw(x5)
      window.draw(x6)
      window.draw(x7)
      window.draw(x8)
      window.draw(x9)

      window.draw(y1)
      window.draw(y2)
      window.draw(y3)
      window.draw(y4)
      window.draw(y5)
      window.draw(y6)
      window.draw(y7)
      window.draw(y8)
      window.draw(y9)

      window.draw(ylabel)
      window.draw(xlabel)
      

      # end the current frame
      window.display
      end

    
  end
  
end
