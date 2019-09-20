class Bar

attr_reader :till

  def initialize(till)

    @till = till
    @drinks = []

  end

  def drink_count
    return @drinks.count
  end

  def add_drink(drink)
      @drinks << drink
    end

  def serve(guest, drink)
    guest.buy(drink)
    @till += drink.price()
  end
end
