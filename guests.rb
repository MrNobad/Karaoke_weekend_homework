class Guests

  attr_reader :name, :wallet, :favourite

  def initialize(name, wallet, favourite)
    @name = name
    @wallet = wallet
    @favourite = favourite
    # @class = 0
  end

  def buy(drink)
    @wallet -= drink.price()
  end

end
