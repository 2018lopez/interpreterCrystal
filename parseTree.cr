
require "./errorHandler"

class ParseTree

    @@global_counter  = 0
    @@final_result = ""
    @@global_spacer = "        "
  
  
      def self.derRightMost(data)
  
          return if data.nil?
          @@global_counter  = 0
          @@final_result = ""
  
  
          data = data.strip("go")
          data = data.chomp("stop")
  
          data = data.split(",")#remove all whitespace of the string input
  
          cons = data.size 
          cons = cons - 1
  
          dataSize = data.size
          dataSize = dataSize - 1
          counter = 1
  
          puts "    <program>  "
          puts "  /     |      \\"
          puts "go <commands> stop"
  
          spacer = "       "
  
          if dataSize >= 0
              while dataSize >= 1
                  if dataSize != cons
                      spacer = spacer + "        "
                  end 
  
                  puts spacer + "/     \\"
  
  
  
                  puts "go " + "<draw>, " * counter + "<command>" + " stop"
                  counter += 1
                  dataSize -= 1
              end
                  counter -= 1
                  if counter == 0 
                      puts  "      |"
                  else 
  
                      puts spacer + "        |"
                  end
                  
                  puts "go " + "<draw>, " * counter + "<draw>" + " stop" 
                  inCmds = "<draw>, " * counter + "<draw>"
                  @@global_counter = counter
  
          end  
  
          dataSize = data.size - 1
          while dataSize >= 0
                  printCmd(data[dataSize])
                  dataSize -= 1
              end
             
         
  
      end
  
      def self.printCmd(data)
       
          # declare errorHandler class
          errormsg = ErrorHandler
  
          #declare validatexy class
          valxy = ValidateXY
  
          return if data.nil?
          #Valid draw commmand
           cmds = ["<xy>.<xy>", "tri <xy>.<xy>.<xy>", "cir<xy>.<xy>", "axes <x>.<y>", "fill <x>.<y>"]
  
          
          counter = 0
              case data.char_at(counter)
  
              when 'r', 'c'
                  counter=0
                  shape = "#{data.char_at(counter)}#{data.char_at(counter+1)}#{data.char_at(counter+2)}"
  
                      puts @@global_spacer * (@@global_counter) + "      |"
                      puts "go " + "<draw>, " * @@global_counter +  "#{shape} <xy>.<xy>" + @@final_result + " stop"
                      # cirxy.xy 
                      posx = data.size - 2
                      posy = data.size - 1
                      puts @@global_spacer * (@@global_counter+1) + "      |"
                      puts "go " + "<draw>, " * @@global_counter +  "#{shape} <xy>.<x#{data.char_at(posy)}>" + @@final_result + " stop"
                      puts @@global_spacer * (@@global_counter+1) + "     |"
                      puts "go " + "<draw>, " * @@global_counter +  "#{shape} <xy>.<#{data.char_at(posx)}#{data.char_at(posy)}>" + @@final_result + " stop"
  
                      posSecondx = posx - 3
                      posSecondy = posy - 3
  
                      puts @@global_spacer * (@@global_counter+1) + " |"
                      puts "go " + "<draw>, " * @@global_counter +  "#{shape} <x#{data.char_at(posSecondy)}>.<#{data.char_at(posx)}#{data.char_at(posy)}>" + @@final_result + " stop"
                      puts @@global_spacer * (@@global_counter+1) + "|"
                      puts "go " + "<draw>, " * @@global_counter +  "#{shape} <#{data.char_at(posSecondx)}#{data.char_at(posSecondy)}>.<#{data.char_at(posx)}#{data.char_at(posy)}>" + @@final_result + " stop"
                      @@final_result = ", #{shape} <#{data.char_at(posSecondx)}#{data.char_at(posSecondy)}>.<#{data.char_at(posx)}#{data.char_at(posy)}>" + @@final_result
                      @@global_counter -= 1
  
              when 't'
                      counter=0
                      shape = "#{data.char_at(counter)}#{data.char_at(counter+1)}#{data.char_at(counter+2)}"
                      puts @@global_spacer * (@@global_counter) + "      |"
                      puts "go " + "<draw>, " * @@global_counter + "#{shape} <xy>.<xy>.<xy>" + @@final_result  + "stop"
                      
                      posx = data.size - 2
                      posy = data.size - 1
                      
                      puts @@global_spacer * (@@global_counter+2) + "   |"
                      puts "go " + "<draw>, " * @@global_counter + "#{shape} <xy>.<xy>.<x#{data.char_at(posy)}>" + @@final_result  + " stop"
                      puts @@global_spacer * (@@global_counter+2) + "  |"
                      puts "go " + "<draw>, " * @@global_counter + "#{shape} <xy>.<xy>.<#{data.char_at(posx)}#{data.char_at(posy)}>" + @@final_result  + " stop"
  
                      posSecondx = posx - 3 
                      posSecondy = posy - 3
  
                      
                      puts @@global_spacer * (@@global_counter+1) + "      |"
                      puts "go " + "<draw>, " * @@global_counter + "#{shape} <xy>.<x#{data.char_at(posSecondy)}>.<#{data.char_at(posx)}#{data.char_at(posy)}>" + @@final_result  + " stop"
                      puts @@global_spacer * (@@global_counter+1) + "     |"
                      puts "go " + "<draw>, " * @@global_counter + "#{shape} <xy>.<#{data.char_at(posSecondx)}#{data.char_at(posSecondy)}>.<#{data.char_at(posx)}#{data.char_at(posy)}>" + @@final_result  + " stop"
  
  
                     posThirdx = posSecondx - 3 
                     posThirdy = posSecondy - 3
  
                     puts @@global_spacer * (@@global_counter+1) + " |"
                     puts "go " + "<draw>, " * @@global_counter + "#{shape} <x#{data.char_at(posThirdy)}>.<#{data.char_at(posSecondx)}#{data.char_at(posSecondy)}>.<#{data.char_at(posx)}#{data.char_at(posy)}>" + @@final_result  + " stop"
                     puts @@global_spacer * (@@global_counter+1) + "|"
                     puts "go " + "<draw>, " * @@global_counter + "#{shape} <#{data.char_at(posThirdx)}#{data.char_at(posThirdy)}>.<#{data.char_at(posSecondx)}#{data.char_at(posSecondy)}>.<#{data.char_at(posx)}#{data.char_at(posy)}>" + @@final_result  +" stop" 
                    
                     @@final_result =  ", #{shape} <#{data.char_at(posThirdx)}#{data.char_at(posThirdy)}>.<#{data.char_at(posSecondx)}#{data.char_at(posSecondy)}>.<#{data.char_at(posx)}#{data.char_at(posy)}>" + @@final_result
                     @@global_counter -= 1
             
              when 'a', 'f'
                      counter=0
                     
                      shape = "#{data.char_at(counter)}#{data.char_at(counter+1)}#{data.char_at(counter+2)}#{data.char_at(counter+3)}"
                  
                      size = shape.size
                      cords = data = data[size,5]
                      puts @@global_spacer * (@@global_counter) + "      |"
                      puts "go " + "<draw>, " * @@global_counter + "#{shape} <x.y>" + @@final_result  + " stop" 
                      puts @@global_spacer * (@@global_counter) + "            \\"
                      puts "go " + "<draw>, " * @@global_counter + "#{shape} <x>.<#{cords.char_at(2)}>" + @@final_result + " stop"
                      puts @@global_spacer * (@@global_counter) + "         |"
                      puts "go " + "<draw>, " * @@global_counter + "#{shape} <#{cords.char_at(0)}>.<#{cords.char_at(2)}>" + @@final_result + " stop"
                      @@final_result =  ", #{shape} <#{cords.char_at(0)}>.<#{cords.char_at(2)}>" + @@final_result
                      @@global_counter -= 1
  
  
              else
  
                  return false
  
              end
  
          return true
          
      end

end