class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def guess
    print "#{@name}, guess a letter: "
    gets.chomp.downcase
  end
end