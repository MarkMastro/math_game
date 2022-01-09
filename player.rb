class Player
    attr_accessor :no_of_lives
    attr_accessor :name

    def initialize (name)
        @no_of_lives = 3
        @name = name
    end

end