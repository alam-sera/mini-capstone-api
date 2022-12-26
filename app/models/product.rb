class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true 
  validates :price, presence: true, numericality: {greater_than: 0}
  validates :description, presence: true, length: {in: 10..500}

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def is_discounted?
    if price > 10 
      return true
    else 
      return false
    end 
  end

  def tax
    price * 0.09
  end

  def total
    tax + price 
  end

  

  belongs_to :supplier
  has_many :orders
  has_many :carted_products
  has_many :orders, through: :carted_products
  has_many :category_products
  has_many :categories, through: :category_products
  # def supplier
  #   Supplier.find_by(id: supplier)
  # end 
end
