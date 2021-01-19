class Product < ApplicationRecord
  def is_discounted?
    return true if price < 10
    return false
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
