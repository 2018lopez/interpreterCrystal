require "./errorHandler" #import error handler class

class ValidateXY

    def self.verifyxy(data) : Bool

        errormsg = ErrorHandler #declare error handler object

        #declare x and y valid values
        x = "a b c d e f g h i" 
        y = "1 2 3 4 5 6 7 8 9"

        #verify data pass to funchtion is equal since its validating xy coord
        if data.size != 2  

            return false

        end

        xdata = data.char_at(0) #get x value coord
        ydata = data.char_at(1) #get y value coord

        if !verifyX(xdata) #validate x coord
            
            errormsg.errorHandler("Error Sytnax : #{xdata} is an invalid value for x. Valid x values : #{x}")
            return false

        end

        if !verifyY(ydata)#validate y coord

            errormsg.errorHandler("Error Sytnax : #{ydata} is an invalid value for y. Valid y values : #{y}")
            return false
        end

        return true
    
    end
    
    #Validate single x values
    def self.validatex(data) : Bool

        #declare object
        errormsg = ErrorHandler
        
        x = "a b c d e f g h i" 

        if !verifyX(data) #validate x coord
            
            errormsg.errorHandler("Error Sytnax : #{data} is an invalid value for x. Valid x values : #{x}")
            return false
        end

        return true
    
    end

    #Validate single y values
    def self.validatey(data) : Bool

        #declare object
        errormsg = ErrorHandler
       
        y = "1 2 3 4 5 6 7 8 9"

        if !verifyY(data) #validate y coord
            errormsg.errorHandler("Error Sytnax : #{data} is an invalid value for y. Valid y values : #{y}")
            return false
        end

        return true


    end

  

    #Validate x values 
    def self.verifyX(data) : Bool

         x = "abcdefghi"  

         if x.matches?(/#{data}/)
            return true
         end

        return false
    end

    #validate y values
    def self.verifyY(data) : Bool
        
         y = "123456789"

         if y.matches?(/#{data}/)
            return true
         end
        
        return false
    end
    
end