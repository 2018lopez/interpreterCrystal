require "./langRecognizer" #import Language Recognizer class

def main

  #variable that contain grammar
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
  
  lang = LangRecognizer #declare Language Recognizer object
  
  programStatus = true #declare variable  for program status

  while programStatus
  
    puts "\n"
    puts "<><><<><><>><<><<>><><>><><><><><><><><><>"
    puts "Enter a String #: "
    puts "\n"
    
    inputString = gets #get user input
   
    #validate if input is equal to EXIT - if yes then it exist the program
    if inputString == "EXIT"
     
      puts "**************************"
      puts "Program End"
      puts "**************************"
      break 

    end

    #validate if input is equal to exit - prints a error message and display the correct command to exist the program 
    if inputString == "exit"

      puts "Wrong Command -> exit <- to exit the program. Command to exit the program -> EXIT"
    
    end


    #validate if input is equal to g - if yes then prints grammar
    if inputString == "g"
      
      puts "Allowed Grammar"
      puts grammar
      puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
    end

    #validate if input is not equal to g or exit. if yes then string is validate and parse
    if inputString != "g" && inputString != "exit"
      
      lang.parserString(inputString) #object lang call method to parseString

    end

  end

  
end

main
