require "./validateStartEnd" #import validateStartEnd class
require "./validateXY" # import validateXY class
require "./validateCmd" # import validateCmd class
require "./derivation" # import Derivation class
require "./draw"

class LangRecognizer

    

    def self.parserString(data : String | Nil)

        val = ValidateStartEnd # declare object to validate Start and End characters of the String
        valxy = ValidateXY # declare object to validate x and y values
        valcmd = ValidateCmd # declare object to validate commands
        der = Derivation
        d = DrawShape

        return if data.nil?
        dataW = data.delete(" ")#remove all whitespace of the string input
        
       if val.vStartEnd(dataW)# validate start and end of string. If its true it continue validating 

        #puts valxy.verifyxy("f7") func to validate xy values
         if valcmd.valCmd(dataW)
             
            puts "Enter a c to continue: To Print the Derivations: "
            inputs = gets
            # inputTree = gets
            

            if inputs == "c"
            
                der.derRightMost(dataW)

                puts "Enter a c to continue: To Display the Draw: "
                inputDraw = gets

                if inputDraw == "c"

                    d.draw

                end
            
            end
            

         end

       end
        
        
        
        
    end




end