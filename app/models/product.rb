class Product < ApplicationRecord
  validate :name, null: false
  validate :price, presence: true
  validate :on_clearance, presence: true
  validate :condition, default: ""
  validate :quantity, default: ""
end
