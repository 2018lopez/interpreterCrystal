require "./errorHandler"
require "./validateXY"


class ValidateCmd 

     

    def self.valCmd(data : String | Nil ) : Bool | Nil
        puts "inside valCmd"
        puts data
        # declare errorHandler class
         errormsg = ErrorHandler

        #declare validatexy class
        valxy = ValidateXY


        #Valid draw commmand
         draw = "rec,tri,cir,axes,fill"

        #Store String size 
        dataSize = data.size

        return if data.nil?
        data = data.strip("go")
        data = data.chomp("stop")
       
        puts data

        counter = 0
        shape = "#{data.char_at(0)}#{data.char_at(1)}#{data.char_at(2)}"
        
        puts "::::::::::::::::::::::::::"
        puts data
        puts ">>>>>>>>>>>>>>>>>>>>>>>>>>"
        puts shape
        puts "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
        puts "#{data.char_at(counter)}"
        

        while counter < dataSize
            
          
            # if data.char_at(counter) === 'r'

            #     if shape == "rec"
                    
            #         puts ">>>>>>>>>>>>"
            #         puts shape
            #         puts ":::::::::::"
            #         puts counter 

            #         posx = 3
                    
            #         posy = 4
            #         cord = "#{data.char_at(posx)}#{data.char_at(posy)}"

            #         if !valxy.verifyxy(cord)
                        
            #             return false
            #         end

            #         counter = posy+=1


            #         if !verifyDotSyntax("#{data.char_at(counter)}")
                        
            #             return false

            #         end
                    
            #         posSecondx = counter +1
            #         posSecondy = counter +2
            #         coord2 = "#{data.char_at(posSecondx)}#{data.char_at(posSecondy)}"

            #         if !valxy.verifyxy(coord2)
                        
            #             return false
            #         end



            #     else
                
            #         errormsg.errorHandler("Error Sytnax: #{shape} is an invalid draw command. Valid draw commands: #{draw}")
            #         return false

            #     end
                
            
            # elsif data.char_at(counter) === 't'

            #     if shape == "tri"

            #         puts "tri"

            #     else

            #         errormsg.errorHandler("Error Sytnax: #{shape} is an invalid draw command. Valid draw commands: #{draw}")
            #         return false
            #     end

            # elsif data.char_at(counter) === 'c'
            
            # elsif data.char_at(counter) === 'a'
            
            # elsif data.char_at(counter) === 'f'

            # else
            
            # end
            puts ("#{data.char_at(counter)}")

            case data.char_at(counter)
            when 'r'
                if shape == "rec"
                                
                    puts ">>>>>>>>>>>>"
                    puts shape
                    puts ":::::::::::"
                    puts counter 
            
                    posx = 3
                    
                    posy = 4
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
                    
                   
            
                else
                
                    errormsg.errorHandler("Error Sytnax: #{shape} is an invalid draw command. Valid draw commands: #{draw}")
                    return false
            
                end
            when 't'
             puts "tri"
            
            when 'c'

                puts "cir"
            when 'a'
                 
                puts "axis"
            
            when 'f'

                puts "fill"

            else
              puts "exit"
            end
           counter+=50
        end

        return true
    end

    def self.verifyDotSyntax(data) : Bool

        errormsg = ErrorHandler 
        if data == "."

            return true

        else

            errormsg.errorHandler("Error Sytnax: #{data} is an invalid syntax. Valid Syntax: . ")
            return false

        end
    end
end
