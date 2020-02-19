class Greatest::CLI 
  
  def start
        

        
         puts "Please enter your name for a more personalize experience"
         
         
        users_name = gets.strip
        puts "
        
        
        
        
        Hello #{users_name} welcome to the Greatest NBA player list!
        
        "
        get_player
        list_player
        get_stats
        
        
    end
    
    def get_player
     
     
     
     @player =  Greatest::Player.all
      
     
    end
    
    def list_player
      puts" Select one of the Greatest NBA players
    
     ".blue
      @player.each do | player, index| puts"#{index} #{player.name} "
      end
      end
      def get_stats
        select_player = gets.strip.to_i
        if valid_input(select_player,@player)
          show_player_for(select_player)
      end
    end
    def valid_input(input,data)
      input.to_i <= data.length && input.to_i > 0
    end
    def show_player_for(select_player)
      player = @player [select_player -1]
      puts  "here are the stats #{player.name}"
    end
  end