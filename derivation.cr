require "./errorHandler" #import error handler class

class Derivation

    @@global_counter  = 0
    @@final_result = ""
  
  
      def self.derRightMost(data)
  
          return if data.nil?
          @@global_counter  = 0
          @@final_result = ""
  
          #remove go and stop  from the input string
          data = data.strip("go")
          data = data.chomp("stop")
  
          data = data.split(",")#remove all whitespace of the string input
        
        
          cons = data.size 
          cons = cons - 1
        
          #input string size 
          dataSize = data.size
          dataSize = dataSize - 1
          counter = 1
          
          #print first part of the derivation
          puts "    <program>  "
          puts "go <commands> stop"
  
          if dataSize >= 0 #verify datasize is more than 0
            while dataSize >= 1

                puts "go " + "<draw>, " * counter + "<command>" + " stop"  # print following derivation
                counter += 1 #increment counter
                dataSize -= 1 #decrement dataSize
            end

            counter -= 1 #decrement counter

            puts "go " + "<draw>, " * counter + "<draw>" + " stop"    #print following derivation   
            @@global_counter = counter

          end  
  
          dataSize = data.size - 1 # decrement datasize

          while dataSize >= 0

            printCmd(data[dataSize]) #print rest of the Right most derivation  
            dataSize -= 1 #decrement dataSize

         end

      end
  
      def self.printCmd(data)
       
          # declare errorHandler class
          errormsg = ErrorHandler
  
          #declare validatexy class
          valxy = ValidateXY
  
          return if data.nil?
          #Valid draw commmand
           cmds = ["rec <xy>.<xy>", "tri <xy>.<xy>.<xy>", "cir <xy>.<xy>", "axes <x>.<y>", "fill <x>.<y>"]
  
          #declare counter variable
          counter = 0
        
          #Begin the printing of the derivation
          case data.char_at(counter)
  
              when 'r', 'c' #derivation for rec or cir

                  counter = 0

                  shape = "#{data.char_at(counter)}#{data.char_at(counter+1)}#{data.char_at(counter+2)}" #get shape value
             
                      puts "go " + "<draw>, " * @@global_counter +  "#{shape} <xy>.<xy>" + @@final_result + " stop" #print shape sytnax derivation
                      # cirxy.xy 
                      posx = data.size - 2 #get x value
                      posy = data.size - 1 #get y value
                      puts "go " + "<draw>, " * @@global_counter +  "#{shape} <xy>.<x#{data.char_at(posy)}>" + @@final_result + " stop" # printing right most derivation accordingly - starts with y 
                      puts "go " + "<draw>, " * @@global_counter +  "#{shape} <xy>.<#{data.char_at(posx)}#{data.char_at(posy)}>" + @@final_result + " stop" # printing right most derivation accordingly - continue with x
  
                      posSecondx = posx - 3 #get x value
                      posSecondy = posy - 3 #get y value
  
                      puts "go " + "<draw>, " * @@global_counter +  "#{shape} <x#{data.char_at(posSecondy)}>.<#{data.char_at(posx)}#{data.char_at(posy)}>" + @@final_result + " stop" #printing right most derivation accordingly - continue with y
                      puts "go " + "<draw>, " * @@global_counter +  "#{shape} <#{data.char_at(posSecondx)}#{data.char_at(posSecondy)}>.<#{data.char_at(posx)}#{data.char_at(posy)}>" + @@final_result + " stop" #printing right most derivation accordingly - continue with x
                      @@final_result = ", #{shape} <#{data.char_at(posSecondx)}#{data.char_at(posSecondy)}>.<#{data.char_at(posx)}#{data.char_at(posy)}>" + @@final_result #print - final derivation
                      @@global_counter -= 1 #decrement global counter
  
  
              when 't' #derivation for tri

                      counter = 0 

                      shape = "#{data.char_at(counter)}#{data.char_at(counter+1)}#{data.char_at(counter+2)}"#get value for shape
                      puts "go " + "<draw>, " * @@global_counter + "#{shape} <xy>.<xy>.<xy>" + @@final_result  + "stop" #print shape sytnax
  
                      
                      posx = data.size - 2 #get x value
                      posy = data.size - 1 #get y value
                      
                      puts "go " + "<draw>, " * @@global_counter + "#{shape} <xy>.<xy>.<x#{data.char_at(posy)}>" + @@final_result  + " stop" # printing right most derivation accordingly - starts with y 
                      puts "go " + "<draw>, " * @@global_counter + "#{shape} <xy>.<xy>.<#{data.char_at(posx)}#{data.char_at(posy)}>" + @@final_result  + " stop" # printing right most derivation accordingly - starts with x
  
                      posSecondx = posx - 3 #get x value
                      posSecondy = posy - 3 #get y value
  
                      puts "go " + "<draw>, " * @@global_counter + "#{shape} <xy>.<x#{data.char_at(posSecondy)}>.<#{data.char_at(posx)}#{data.char_at(posy)}>" + @@final_result  + " stop" # printing right most derivation accordingly - starts with y
                      puts "go " + "<draw>, " * @@global_counter + "#{shape} <xy>.<#{data.char_at(posSecondx)}#{data.char_at(posSecondy)}>.<#{data.char_at(posx)}#{data.char_at(posy)}>" + @@final_result  + " stop"# printing right most derivation accordingly - starts with x
  
  
                     posThirdx = posSecondx - 3 #get x value
                     posThirdy = posSecondy - 3 #get y value
  
                     puts "go " + "<draw>, " * @@global_counter + "#{shape} <x#{data.char_at(posThirdy)}>.<#{data.char_at(posSecondx)}#{data.char_at(posSecondy)}>.<#{data.char_at(posx)}#{data.char_at(posy)}>" + @@final_result  + " stop" # printing right most derivation accordingly - starts with y 
                     puts "go " + "<draw>, " * @@global_counter + "#{shape} <#{data.char_at(posThirdx)}#{data.char_at(posThirdy)}>.<#{data.char_at(posSecondx)}#{data.char_at(posSecondy)}>.<#{data.char_at(posx)}#{data.char_at(posy)}>" + @@final_result  +" stop" # printing right most derivation accordingly - starts with x
                    
                     @@final_result =  ", #{shape} <#{data.char_at(posThirdx)}#{data.char_at(posThirdy)}>.<#{data.char_at(posSecondx)}#{data.char_at(posSecondy)}>.<#{data.char_at(posx)}#{data.char_at(posy)}>" + @@final_result #print final derivation
                     @@global_counter -= 1# decrement global counter 
  
             
              when 'a', 'f' #derivation for axes or fill

                      counter = 0 

                      shape = "#{data.char_at(counter)}#{data.char_at(counter+1)}#{data.char_at(counter+2)}#{data.char_at(counter+3)}" #get value for shape
  
                      size = shape.size
                      cords = data = data[size,5]

                      puts "go " + "<draw>, " * @@global_counter + "#{shape} <x.y>" + @@final_result  + " stop" # printing right most derivation accordingly - draw sytnax
                      puts "go " + "<draw>, " * @@global_counter + "#{shape} <x>.<#{cords.char_at(2)}>" + @@final_result + " stop"# printing right most derivation accordingly - starts with y 
                      puts "go " + "<draw>, " * @@global_counter + "#{shape} <#{cords.char_at(0)}>.<#{cords.char_at(2)}>" + @@final_result + " stop"# printing right most derivation accordingly - starts with x
                      @@final_result =  ", #{shape} <#{cords.char_at(0)}>.<#{cords.char_at(2)}>" + @@final_result #print final derivation
                      @@global_counter -= 1 #decrement global counter
  
  
  
              else
  
                  return false
  
              end
  
          return true
          
      end

end