class Game
    attr_accessor :current_player
    attr_accessor :player_1
    attr_accessor :player_2
    attr_accessor :winner

    def initialize
        
        puts "Hello, please enter the name of player 1"
        name = gets.chomp
        @player_1 = Player.new(name)
        puts "Please enter the name of player 2"
        name = gets.chomp
        @player_2 = Player.new(name)
        puts "Player 1 is #{@player_1.name} and Player 2 is #{@player_2.name}"
        @current_player = @player_1
        @winner = @player_1

        self.game_loop
    end

    def game_start
        
    end

    def game_loop
        while @player_1.no_of_lives != 0 && @player_2.no_of_lives != 0
            num1, num2, answer = self.create_math_problem
            puts "#{current_player.name} it is your turn, what is #{num1} + #{num2}"
            player_answer = gets.chomp
            puts "ur ans #{player_answer} vs #{answer}"

            if player_answer == answer
                puts "Correct!"
            else
            puts "Sorry #{current_player.name} but that is incorrect, you lose a life "
            current_player.no_of_lives -=1
            
            end
                
            
            puts "The score is #{@player_1.name}: #{@player_1.no_of_lives}/3 vs #{@player_2.name}: #{@player_2.no_of_lives}/3" 
            puts "----NEW TURN----"

            if @current_player == @player_1
                @current_player = @player_2
                puts "player is #{@current_player.name}"
            else
                @current_player = @player_1
                puts "player is #{@current_player.name}"

            end

            if @player_1.no_of_lives == 0
                @winner = @player_2
            end

        end

        puts "Congratulations #{@winner.name}! You have won!"

        
        
    end

    def create_math_problem
        num1 = rand(20)
        num2 = rand(20)
        answer = num1 + num2
        return num1, num2, answer



    end


end