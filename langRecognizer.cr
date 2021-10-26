require "./validateStartEnd" #import validateStartEnd class
require "./validateXY" # import validateXY class
require "./validateCmd" # import validateCmd class
require "./derivation" # import Derivation class
require "./draw" #import DrawShape Class
require "./parseTree" #import ParseTree Class

class LangRecognizer

    

    def self.parserString(data : String | Nil)

        val = ValidateStartEnd # declare object to validate Start and End characters of the String
        valxy = ValidateXY # declare object to validate x and y values
        valcmd = ValidateCmd # declare object to validate commands
        der = Derivation # declare object for Derivation - print derivation
        pTree = ParseTree # declare object for Parse Tree - print parse tree
        d = DrawShape # declare object for DrawShape - display draw from input string

        return if data.nil?
        dataW = data.delete(" ")#remove all whitespace of the string input
        
        if val.vStartEnd(dataW)# validate start and end of string. If its true it continue validating 

            if valcmd.valCmd(dataW) #validate string excluding go and stop of the string. If its true it continue with derivation
                
                #ask user to continue to print derivation
                puts "\n"
                puts "Enter  c to continue: To Print the Derivations: "
                inputs = gets
               
                while( inputs != "c")

                    puts "Please enter c to continue"
                    inputs = gets

                end

                der.derRightMost(dataW) #call derRightMost method and pass input. Print the Right Most Derivation
                
                #ask user to continue to print parse tree
                puts "\n"
                puts "Enter  c to continue: To Print the Parse Tree: "
                inputs = gets

                while ( inputs != "c")
                    
                    puts "Please enter c to continue"
                    inputs = gets

                end

                pTree.derRightMost(dataW) #call derRightMost method and pass input. Print the Parse Tree

                #ask user to continue to print parse tree
                puts "\n"
                puts "Enter  c to continue: To Display Draw: "
                inputs = gets

                while ( inputs != "c")
                    
                    puts "Please enter c to continue"
                    inputs = gets

                end

                d.draw #call draw method. Display Draw

            end

         end
        
    end

end