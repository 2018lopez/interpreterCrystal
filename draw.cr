require "ishi"


class DrawShape
  def self.draw
   
    Ishi.new do
      plot([1, 2, 3, 4], [5, 6, 7, 8], pointtype: 1, pointsize: 2)
    
    end
    
  end
  
end
