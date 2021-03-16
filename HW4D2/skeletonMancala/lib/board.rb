class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) {Array.new}
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four start_stone each
    @cups.each_with_index do |cup, idx|
        next if idx == 6 || idx == 13
        cup << :stone
        cup << :stone
        cup << :stone
        cup << :stone
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 0 || start_pos > 0
    raise "Starting cup is empty" if @cups[start_pos].empty?
    # start_pos == 6 || start_pos == 13
  end

  def make_move(start_pos, current_player_name)
    #  empties cup
    start_stone = @cups[start_pos]
    @cups[start_pos] = []

    cup_idx = start_pos
    until start_stone.empty?
      cup_idx += 1
      cup_idx = 0 if cup_idx > 13
      # places start_stone in the correct current player's cups
      if cup_idx == 6
        @cups[6] << start_stone.pop if current_player_name == @name1
      elsif cup_idx == 13
        @cups[13] << start_stone.pop if current_player_name == @name2
      else
        @cups[cup_idx] << start_stone.pop
      end

    end
    render
    next_turn(cup_idx)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
