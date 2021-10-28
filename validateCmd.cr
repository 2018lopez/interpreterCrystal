require "./errorHandler" #import Error Handler Class
require "./validateXY" #import Validate XY class


class ValidateCmd 

     
    #function valCmd - validate string excluding the go and stop
    def self.valCmd(data : String | Nil ) : Bool | Nil

        
        # declare errorHandler class
         errormsg = ErrorHandler

        #declare validatexy class
        valxy = ValidateXY


        #Valid draw commmand
         draw = "rec,tri,cir,axes,fill"

        
        #remove go and stop from the input string 
        return if data.nil?
        data = data.strip("go")
        data = data.chomp("stop")

        #Store String size 
        dataSize = data.size - 1

        #declare variable counter and hascomma
        counter = 0
        hasComma = true

        while counter < dataSize #loop through the input and validating

            if counter != 0

                counter = counter + 1   
            end

            #verify if comma exist within the string and validate 
            if counter < dataSize && counter != 0
                
                hasComma = verifyCommaSytnax("#{data.char_at(counter-1)}")

            end

            #Print error msg if comma syntax is not met
            if !hasComma
                errormsg.errorHandler("Error Sytnax: '#{data.char_at(counter-1)}' should have being ','. Please state ',' if you want to enter another command': #{draw}")
                return false
            elsif hasComma && (counter+1) > dataSize
                errormsg.errorHandler("Error Sytnax: '#{data.char_at(counter-1)}' have being stated yet no command was provided. Please state another command if you want to input ','': #{draw}")
                return false 
            end
            
            #Begin of validate input string
            case data.char_at(counter)

            when 'r', 'c'

                #declare variable - to get value for rec and cir
                shape = "#{data.char_at(counter)}#{data.char_at(counter+1)}#{data.char_at(counter+2)}"
                

                if shape == "rec" || shape == "cir" # validate rec or cir
                                
                    if (counter+7) < data.size #verify if meet miminum character of rec or cir sytnax

                        posx = counter +3 # get x value
                        posy = counter +4 # get y value
                        cord = "#{data.char_at(posx)}#{data.char_at(posy)}" #concat both x and y value
                
                        if !valxy.verifyxy(cord) # validate xy coordinate 
                            
                            return false
                        end
                
                        counter = posy+=1 #increment counter
                
                
                        if !verifyDotSyntax("#{data.char_at(counter)}") # validate the dot sytnax after first xy cord
                            
                            return false
                
                        end
                        
                        posSecondx = counter +1 #get second x value
                        posSecondy = counter +2# get second y value
                        coord2 = "#{data.char_at(posSecondx)}#{data.char_at(posSecondy)}" #concat the second xy value
                
                        if !valxy.verifyxy(coord2) # valide the second xy coord
                            
                            return false
                        end
                        
                        counter = posSecondy + 1 #increment counter
                    else
                        
                        #if input string does meet miminmum rec or cir sytnax; it gather data and then display the error
                        tempdata = data[counter, (data.size-1)]
                        length = tempdata.size
                        tempdata = tempdata[3,(length - 1)]
                        errormsg.errorHandler("<ERROR> : It seems you provided less agrument than needed for #{shape} <xy>.<xy>; YOUR INPUT: #{shape} #{tempdata}")
                        return false

                    end
            
                else
                    
                    #display an error msg if the first part of draw command does not match sytnax
                    errormsg.errorHandler("Error Sytnax: #{shape} is an invalid draw command. Valid draw commands: #{draw}")
                    return false
            
                end

            when 't' #validate tri
                
                #declare variable - to get value for tri
                shape = "#{data.char_at(counter)}#{data.char_at(counter+1)}#{data.char_at(counter+2)}" 

                if shape == "tri" #validate tri

                    if (counter+10) < data.size #verify that input string meet the minimum of the tri sytnax

                        posx = counter +3 # get value of x
                        posy = counter +4 # get value of y
                        cord = "#{data.char_at(posx)}#{data.char_at(posy)}" # concat x and y value
                
                        if !valxy.verifyxy(cord) # validate xy coord
                            
                            return false
                        end
                
                        counter = posy+=1 #increment counter
                
                
                        if !verifyDotSyntax("#{data.char_at(counter)}") #validate dot sytnax 
                            
                            return false
                
                        end
                        
                        posSecondx = counter +1 #get second x value
                        posSecondy = counter +2 #get second y value
                        coord2 = "#{data.char_at(posSecondx)}#{data.char_at(posSecondy)}" #concat x and y value
                
                        if !valxy.verifyxy(coord2) # validate the second coord
                            
                            return false
                        end
                        
                        counter = posSecondy + 1 #increment counter

                        if !verifyDotSyntax("#{data.char_at(counter)}") # validat dot sytanx
                                
                            return false
                
                        end

                        posThirdx = counter +1 # get third x value 
                        posThirdy = counter +2 # get third y value
                        coord3 = "#{data.char_at(posThirdx)}#{data.char_at(posThirdy)}" #concat x and y value

                        if !valxy.verifyxy(coord3) # validate the third coord
                                
                            return false

                        end

                        counter = posThirdy +1 #increment counter
                    else
                        
                        #if input string does not meet miminmum tri sytnax; it gather data and then display the error
                        tempdata = data[counter, (data.size-1)]
                        length = tempdata.size
                        tempdata = tempdata[3,(length - 1)]
                        errormsg.errorHandler("<ERROR> : It seems you provided less agrument than needed for #{shape} <xy>.<xy>.<xy>; YOUR INPUT: #{shape} #{tempdata}")
                        return false
                    
                    end

                
                else

                    #display an error msg if "tri" does not match sytnax
                    errormsg.errorHandler("Error Sytnax: #{shape} is an invalid draw command. Valid draw commands: #{draw}")
                    return false
                
                end
             
            
           
            when 'a', 'f' # validat axes and fill
                
                #declare variable - to get value for axes or fill
                elem = "#{data.char_at(counter)}#{data.char_at(counter+1)}#{data.char_at(counter+2)}#{data.char_at(counter+3)}"
              
                if elem == "axes" || elem == "fill" #validate for axes or fill

                    #verify if input string meet the minimum axes or fill syntax
                    if (counter+6) < data.size

                        posx = counter +4 #get x value
                        
                        if !valxy.validatex("#{data.char_at(posx)}") #validate x coord
                            
                            return false
                        end
                
                        counter = posx +=1 #increment counter
                
                
                        if !verifyDotSyntax("#{data.char_at(counter)}") # validate dot sytnax
                            
                            return false
                
                        end
                        
                        posy = counter +1 #increment counter
        
                        coord2 = "#{data.char_at(posy)}" #get y value
                
                        if !valxy.validatey(coord2)# validate y coord
                            
                            return false
                        end
                        
                        counter = posy + 1 #increment counter

                    else

                        #if input string does not meet miminmum axes or fill sytnax; it gather data and then display the error
                        tempdata = data[counter, (data.size-1)]
                        length = tempdata.size
                        tempdata = tempdata[4,(length - 1)]
                        errormsg.errorHandler("<ERROR> : It seems you provided less agrument than needed for #{elem} <x>.<y>; YOUR INPUT: #{elem} #{tempdata}")
                        return false
                        
                    end

                else
                    
                     #display an error msg if "axes or fill" does not match sytnax
                    errormsg.errorHandler("Error Sytnax: #{elem}  is an invalid draw command. Valid draw commands: #{draw}")
                    return false

                end
            
        

            else
            
            #increment counter
              counter = dataSize + 1
              return false

            end
    
        end

        return true
        
    end

    # function to verify dot sytnax
    def self.verifyDotSyntax(data) : Bool

        errormsg = ErrorHandler 
        if data == "."

            return true

        else

            errormsg.errorHandler("Error Sytnax: #{data} is an invalid syntax. Valid Syntax: . ")
            return false

        end
    end

    #function to verify comma sytnax
    def self.verifyCommaSytnax(data) : Bool
    
        errormsg = ErrorHandler 
        if data == ","

            return true

        else

            errormsg.errorHandler("Error Sytnax: #{data} is an invalid syntax. Valid Syntax: . ")
            return false

        end

    end

    #function to verify if a comma exist on the string input by the user

    def self.commaExist(data) : Bool
        
        c = ","

        if c.matches?(/#{data}/)

            return true
            
         end
        
        return false
    end
end
