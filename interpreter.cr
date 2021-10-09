require "./langRecognizer"

def main
  grammar = "
  <shapes>→ go <commands> stop
  <commands>→ <draw>
   | <draw> , <commands>
  <draw>→ rec <xy>.<xy>
          | tri <xy>.<xy>.<xy>
          | cir <xy>.<xy>
          | axes <x>.<y>
          | fill <x>.<y>
    <xy>→ <x><y>
    <x>→ a | b | c | d | e | f | g | h | i
    <y>→ 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
  "
  puts "************************************************************************"
  puts " Interpreter - Crystal "
  puts "************************************************************************"
  puts "Allowed Grammar"
  puts "\n"
  puts grammar
  puts "------------------------------------------------------------------------"
  puts "Commands: EXIT to end the program and g to display the allowed Grammar "
  puts "------------------------------------------------------------------------"
  puts "\n"
  
  lang = LangRecognizer
  
  programStatus = true

  while programStatus
  
    puts "Enter a String #: "
    inputString = gets
   

    if inputString == "EXIT"
     
      puts "**************************"
      puts "Program End"
      puts "**************************"
      break 

    end

    if inputString == "exit"
      puts "Wrong Command -> exit to exit the program. Command to exit the program -> EXIT"
    
    end

    if inputString == "g"
      
      puts "Allowed Grammar"
      puts grammar
      puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
    end

   
    if inputString != "g" && inputString != "exit"
      
      lang.parserString(inputString)

    end

   
    programStatus = false
    
  end

  
end

main
