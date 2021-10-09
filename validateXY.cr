require "./errorHandler"

class ValidateXY

    def self.verifyxy(data) : Bool

        errormsg = ErrorHandler
        x = "a b c d e f g h i" 
        y = "1 2 3 4 5 6 7 8 9"


        if data.size != 2
            

            return false
        end

        xdata = data.char_at(0)
        ydata = data.char_at(1)

        if !verifyX(xdata)
            
            errormsg.errorHandler("Error Sytnax : #{xdata} is an invalid value for x. Valid x values : #{x}")
            return false
        end

        if !verifyY(ydata)
            errormsg.errorHandler("Error Sytnax : #{ydata} is an invalid value for y. Valid y values : #{y}")
            return false
        end

        return true
    
    end

    def self.verifyX(data) : Bool

         x = "abcdefghi"  
         if x.matches?(/#{data}/)
            return true
         end
        return false
    end

    def self.verifyY(data) : Bool
        
         y = "123456789"

         if y.matches?(/#{data}/)
            return true
         end
        
        return false
    end
    
end