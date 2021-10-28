require "./errorHandler" # import errorHandler Class
require "./derivation" #import Derivation class
require "./validateCmd"

class ValidateStartEnd

    def self.vStartEnd( data : String | Nil) : Bool
        
        #Delcare Error Handler Object
        errormsg = ErrorHandler
        der = Derivation

        #Store String size 
        dataSize = data.size
        
        startCharOne = data.char_at(0)#first char of the String
        startCharSecond= data.char_at(1)#second char of string
        start = "#{startCharOne}#{startCharSecond}" #join first and second characters
        
        #get each character of the last 4 letter of the string 
        endCharOne = data.char_at(dataSize-4)
        endCharSecond = data.char_at(dataSize-3)
        endCharThird = data.char_at(dataSize-2)
        endCharFourth = data.char_at(dataSize-1)
        
        endChar = "#{endCharOne}#{endCharSecond}#{endCharThird}#{endCharFourth}" #concat each character to get last word in the string


        if start != "go" #validate go sytnax
            errormsg.errorHandler("Error Sytnax: #{start} is an invalid grammar at the start of the string. Valid grammar: go")
            return false
        end

        if endChar != "stop"# validate end sytnax
            errormsg.errorHandler("Error Sytnax: #{endChar} is an invalid grammar at the end of the string. Valid grammar: stop")
            return false

        end

        valcmd = ValidateCmd

        if(valcmd.commaExist(data))

            puts "Comma exist"
        end

       
        return true

    end

    

end