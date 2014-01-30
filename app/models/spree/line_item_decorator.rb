module Spree
  LineItem.class_eval do
    validates :quantity, numericality: {less_than_or_equal_to: 1, message: (SpreeSingleQuantity.try(:error_message) || "Item already exists in your shopping cart") }
  end
end