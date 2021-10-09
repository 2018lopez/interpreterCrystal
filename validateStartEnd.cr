require "./errorHandler"
class ValidateStartEnd

    def self.vStartEnd( data : String | Nil) : Bool
        
        #Delcare Error Handler Object
        errormsg = ErrorHandler

        dataSize = data.size
        puts data
        puts dataSize

        
        startCharOne = data.char_at(0)
        startCharSecond= data.char_at(1)
        start = "#{startCharOne}#{startCharSecond}"
        
        endCharOne = data.char_at(dataSize-4)
        endCharSecond = data.char_at(dataSize-3)
        endCharThird = data.char_at(dataSize-2)
        endCharFourth = data.char_at(dataSize-1)
        
        endChar = "#{endCharOne}#{endCharSecond}#{endCharThird}#{endCharFourth}"


        if start != "go"
            errormsg.errorHandler("Error Sytnax: #{start} is an invalid grammar at the start of the string. Valid grammar: go")
            return false
        end

        if endChar != "stop"
            errormsg.errorHandler("Error Sytnax: #{endChar} is an invalid grammar at the end of the string. Valid grammar: stop")
            return false

        end
        
        return true

    end

    

end