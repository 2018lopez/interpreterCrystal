require "./errorHandler"
require "./validateXY"


class ValidateCmd 

     

    def self.valCmd(data : String | Nil ) : Bool | Nil

        
        # declare errorHandler class
         errormsg = ErrorHandler

        #declare validatexy class
        valxy = ValidateXY


        #Valid draw commmand
         draw = "rec,tri,cir,axes,fill"

        

        return if data.nil?
        data = data.strip("go")
        data = data.chomp("stop")

        #Store String size 
        dataSize = data.size - 1
       
        puts data

        counter = 0

        

       
        
        
        

        while counter < dataSize
            
            puts "#{counter}: #{data.char_at(counter)} "
            case data.char_at(counter)

            when 'r', 'c'

                shape = "#{data.char_at(counter)}#{data.char_at(counter+1)}#{data.char_at(counter+2)}"
                

                if shape == "rec" || shape == "cir"
                                
                    puts ">>>>>>>>>>>>"
                    puts shape
                    puts ":::::::::::"
                    puts counter 
            
                    posx = counter +3
                    
                    posy = counter +4
                    cord = "#{data.char_at(posx)}#{data.char_at(posy)}"
            
                    if !valxy.verifyxy(cord)
                        
                        return false
                    end
            
                    counter = posy+=1
            
            
                    if !verifyDotSyntax("#{data.char_at(counter)}")
                        
                        return false
            
                    end
                    
                    posSecondx = counter +1
                    posSecondy = counter +2
                    coord2 = "#{data.char_at(posSecondx)}#{data.char_at(posSecondy)}"
            
                    if !valxy.verifyxy(coord2)
                        
                        return false
                    end
                    
                   counter = posSecondy + 1
            
                else
                
                    errormsg.errorHandler("Error Sytnax: #{shape} is an invalid draw command. Valid draw commands: #{draw}")
                    return false
            
                end

            when 't'

                shape = "#{data.char_at(counter)}#{data.char_at(counter+1)}#{data.char_at(counter+2)}"

                if shape == "tri"


                    posx = counter +3
                    
                    posy = counter +4
                    cord = "#{data.char_at(posx)}#{data.char_at(posy)}"
            
                    if !valxy.verifyxy(cord)
                        
                        return false
                    end
            
                    counter = posy+=1
            
            
                    if !verifyDotSyntax("#{data.char_at(counter)}")
                        
                        return false
            
                    end
                    
                    posSecondx = counter +1
                    posSecondy = counter +2
                    coord2 = "#{data.char_at(posSecondx)}#{data.char_at(posSecondy)}"
            
                    if !valxy.verifyxy(coord2)
                        
                        return false
                    end
                    
                   counter = posSecondy + 1

                   if !verifyDotSyntax("#{data.char_at(counter)}")
                        
                    return false
        
                   end

                   posThirdx = counter +1
                   posThirdy = counter +2
                   coord3 = "#{data.char_at(posThirdx)}#{data.char_at(posThirdy)}"

                   if !valxy.verifyxy(coord3)
                        
                    return false

                   end

                   counter = posThirdy +1


                    
                
                else

                    errormsg.errorHandler("Error Sytnax: #{shape} is an invalid draw command. Valid draw commands: #{draw}")
                    return false
                
                end
             
            
           
            when 'a', 'f'
                 
                elem = "#{data.char_at(counter)}#{data.char_at(counter+1)}#{data.char_at(counter+2)}#{data.char_at(counter+3)}"
              
                if elem == "axes" || elem == "fill"
                
                    posx = counter +4
                    
                   
            
                    if !valxy.validatex("#{data.char_at(posx)}")
                        
                        return false
                    end
            
                    counter = posx +=1
            
            
                    if !verifyDotSyntax("#{data.char_at(counter)}")
                        
                        return false
            
                    end
                    
                    posy = counter +1
    
                    coord2 = "#{data.char_at(posy)}"
            
                    if !valxy.validatey(coord2)
                        
                        return false
                    end
                    
                   counter = posy + 1

                else
                
                    errormsg.errorHandler("Error Sytnax: #{elem}  is an invalid draw command. Valid draw commands: #{draw}")
                    return false

                end
            
        

            else

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
