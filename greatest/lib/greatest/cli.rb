require'pry'
class Greatest::CLI
  
  def start
    
    puts "Welcome to The World’s Greatest Dog Breeds! "
    puts "Here are the top ten dog list "
  
  
  welcome
  menu
  bye
end
  
  def welcome
    Greatest::Dog.german_dogs
    puts <<-'EOF'
    
      __.                                              
        .-".'                      .--.            _..._    
      .' .'                     .'    \       .-""  __ ""-. 
     /  /                     .'       : --..:__.-""  ""-. \
    :  :                     /         ;.d$$    sbp_.-""-:_:
    ;  :                    : ._       :P .-.   ,"TP        
    :   \                    \  T--...-; : d$b  :d$b        
     \   `.                   \  `..'    ; $ $  ;$ $        
      `.   "-.                 ).        : T$P  :T$P        
        \..---^..             /           `-'    `._`._     
       .'        "-.       .-"                     T$$$b    
      /             "-._.-"               ._        '^' ;   
     :                                    \.`.         /    
     ;                                -.   \`."-._.-'-'     
    :                                 .'\   \ \ \ \         
    ;  ;                             /:  \   \ \ . ;        
   :   :                            ,  ;  `.  `.;  :        
   ;    \        ;                     ;    "-._:  ;        
  :      `.      :                     :         \/         
  ;       /"-.    ;                    :                    
 :       /    "-. :                  : ;                    
 :     .'        T-;                 ; ;        
 ;    :          ; ;                /  :        
 ;    ;          : :              .'    ;       
:    :            ;:         _..-"\     :       
:     \           : ;       /      \     ;      
;    . '.         '-;      /        ;    :      
;  \  ; :           :     :         :    '-.      
'.._L.:-'           :     ;    bug   ;    . `. 
                     ;    :          :  \  ; :  
                     :    '-..       '.._L.:-'  
                      ;     , `.                
                      :   \  ; :                
                      '..__L.:-'
    
    
    
    EOF
    show_dogs
end

  def show_dogs
   Greatest::Dog.all.each.with_index(1) do |dog, i|
      puts "#{i}.   #{dog.name}"
    end
  end
  
  
  
  def show_info(input)
    
     doggie = Greatest::Dog.all[input.to_i-1]
    puts"#{doggie.name} - #{doggie.info}"
  end
  
  def menu
    input = nil
    while input != "exit"
    puts "Enter the number of the dog you want more information on, type list to see list, or exit"
    input = gets.strip.downcase
    
    if input.to_i > 0 && input.to_i <= Greatest::Dog.num_of_dogs
      show_info(input)
    # doggie = show_info[input.to_i-1]
    # puts"#{doggie.name} - #{doggie.info}"
    elsif input == "list"
    show_dogs
    elsif input != "exit"
    puts "Invalid response.Bark again!"
    end
  end
end
  def bye

   puts "goodbye"

end
end