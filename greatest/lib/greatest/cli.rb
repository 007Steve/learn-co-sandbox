class Greatest::CLI 
  
  def start
        

        puts" 
        Welcome to the Greatest NBA player list!
        
        "
        get_player
        list_player
        get_stats
        Greatest::Scraper.scraper_player
        
    end
    
    def get_player
     
     
     
     @player =  Greatest::Player.all
      
     
    end
    
    def list_player
      puts" Select one of the Greatest NBA players
    
     "
      @player.each.with_index(1) do | player, index| puts"#{index} #{player.name} "
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
      puts "here are the stats #{player}"
    end
  end