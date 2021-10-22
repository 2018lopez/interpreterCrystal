
require "ishi"

class DrawShape


    def self.draw
        Ishi.new do
            x = [9]
            y = [3]
            plot(x, y, title: "Visits", style: :boxes, fs: 0.25)
              .boxwidth(0.5)
              .ylabel(" Y")
              .xlabel(" X ")
              .xtics({
                1.0 => "a",
                2.0 => "b",
                3.0 => "c",
                4.0 => "d",
                5.0 => "e",
                6.0 => "f",
                7.0 => "g",
                8.0 => "h",
                9.0 => "i"

              })
            
          end
    end

end