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
                SF::Vertex.new(SF.vector2(80, 80)),
                SF::Vertex.new(SF.vector2(80,500))
            ]

      liney.rotate(90)

      linex = [
            SF::Vertex.new(SF.vector2(80, 500)),
            SF::Vertex.new(SF.vector2(500,500))
        ]

      # create an array of 3 vertices that define a triangle primitive
triangle = SF::VertexArray.new(SF::Triangles, 3)

# define the positions and colors of the triangle's points
triangle[0] = SF::Vertex.new(SF.vector2(200, 200), SF::Color::Red)
triangle[1] = SF::Vertex.new(SF.vector2(300, 200), SF::Color::Blue)
triangle[2] = SF::Vertex.new(SF.vector2(400, 300), SF::Color::Green)

# no texture coordinates here, we'll see that later


      # draw everything here...
      window.draw(liney, SF::Lines)
      window.draw(linex,SF::Lines)
      window.draw(triangle)

      # end the current frame
      window.display
      end

    
  end
  
end
