require "./validateStartEnd" #import validateStartEnd class
require "./validateXY" # import validateXY class
require "./validateCmd" # import validateCmd class

class LangRecognizer

    

    def self.parserString(data : String | Nil)

        val = ValidateStartEnd # declare object to validate Start and End characters of the String
        valxy = ValidateXY # declare object to validate x and y values
        valcmd = ValidateCmd # declare object to validate commands

        return if data.nil?
        dataW = data.delete(" ")#remove all whitespace of the string input
        
       if val.vStartEnd(dataW)# validate start and end of string. If its true it continue validating 

        #puts valxy.verifyxy("f7") func to validate xy values
        valcmd.valCmd(dataW)
        


       end
        
        
        
        
    end




end