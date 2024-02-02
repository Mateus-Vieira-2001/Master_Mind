module Game
  class Play
    def initialize
      @random_pin = Array.new(4)
      # Big pins
      # R = Red, G = Green, B = Blue, V = Violet, Y = Yellow, O=Orange, P = Pink
      @bPins  = ['R','G','B','V','Y','O','P']
      @instance = Distribution.new
      @trying_find_collors = Array.new()
      @turn = 1
      @check = Array.new(4)
      #@random_pin=random_pin
    end
    def raflle
      @random_pin=(@bPins.shuffle.take(4))
      puts @random_pin.inspect
    end
    def master_mind
      while @turn<=10
        for i in 0..3
          @trying_find_collors[i]=gets.chomp.upcase
          unless@trying_find_collors.include?(@trying_find_collors[i])
            puts 'Type again the collor, because your last choice it was filled'
            @trying_find_collors[i]=gets.chomp.upcase
          end
  # Verifica o item adicionado e ja coloca pino branco ou preto para os determinadas resultados
          if @trying_find_collors[i]==@instance.raflle[i]
            @check[@i]='Black'
          elsif @random_pin.include?(@trying_find_collors[i])
            @check[@i]=['White']
          else
            @check[@i]=nil
          end

        end

        if @check.include?(nil)==False || @check.include?('White')==False
          puts 'you win'
          exit
        end
        @turn+=1

      end
    end
  end

  #distribution= Distribution.new
  #Play.new(distribution.raflle).master_mind
  Play.new
end
