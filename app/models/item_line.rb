class ItemLine < ApplicationRecord
  # calculate the total profit
  def total_profit
    act_revenue.to_f - act_cost.to_f
  end

  # calculate profit percentage (safe divide)
  def profit_percentage
    return 0 if act_revenue.to_f.zero?
    ((total_profit / act_revenue.to_f) * 100).round(2)
  end
end
