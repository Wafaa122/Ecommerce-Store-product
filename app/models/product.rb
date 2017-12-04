class Product < ApplicationRecord
  has_many :orders
  def self.search(search_term)
    like_type = Rails.env.production? ? "ilike" : "LIKE"
    Product.where("name #{like_type} ?", "%#{search_term}%")
  end
end