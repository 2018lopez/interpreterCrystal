require "aquaplot"

class DrawShape
  def self.draw
    fns = ["3","2", "5", "4"].map do |fn|
      AquaPlot::Function.new fn
    end
    
    plt = AquaPlot::Plot.new fns
    plt.show
    plt.close
  end
end
