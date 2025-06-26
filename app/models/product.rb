class Product < ApplicationRecord
  has_one :price
  has_many :type
  has_many :enviroment
end
