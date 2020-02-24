require'pry'
class Greatest::CLI
  
  def start
  Greatest::Scraper.scraper_dogs
  welcome
  menu
  bye
end
  
  def welcome
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
end

  def show_dogs
   Greatest::Dog.all.each.with_index(1) do |dog, i|
      puts "#{i}.   #{dog.name}"
    end
  end
  
  
  
  def show_info
    Greatest::Dog.all
  end
  
  def menu
    input = nil
    while input != "exit"
    puts "Enter the number of the dog you want more information on, type list to see list, or exit"
    input = gets.strip.downcase
    
    if input.to_i > 0 && input.to_i <18
      
    doggie = show_info[input.to_i-1]
    puts"#{doggie.name} - #{doggie.info}"
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