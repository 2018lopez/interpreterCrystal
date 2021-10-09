require "./validateStartEnd"
class LangRecognizer

    

    def self.parserString(data : String | Nil)
        val = ValidateStartEnd
        return if data.nil?
        v = data.delete(" ")
        puts v
        puts val.vStartEnd(v)
        
        
        
    end




end