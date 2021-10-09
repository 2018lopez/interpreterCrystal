require "./validateStartEnd" #import validateStartEnd class
require "./validateXY" # import validateXY class

class LangRecognizer

    

    def self.parserString(data : String | Nil)

        val = ValidateStartEnd # declare object to validate Start and End characters of the String
        valxy = ValidateXY # declare object to validate x and y values

        return if data.nil?
        dataW = data.delete(" ")#remove all whitespace of the string input
        
       if val.vStartEnd(dataW)# validate start and end of string. If its true it continue validating 

        puts valxy.verifyxy("f7")

       end
        
        
        
        
    end




end