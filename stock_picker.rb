# frozen_string_literal: true
def stock_picker(prices)
  days = []
  max_profit = 0

  prices.each_with_index do |bought, day_bought|
    prices[day_bought..-1].each_with_index do |sold, day_sold|
      potential_profit = sold - bought

      if potential_profit > max_profit
        max_profit = potential_profit
        days = [day_bought, day_sold + day_bought]
      end
    end
  end
  days
end

print stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
