class Product < ActiveRecord::Base
	belongs_to :user
	validates :product_name,uniqueness: { case_sensitive: false,message: "product name should be unique"}
	validates :value,presence: true,inclusion: { in: %w(500 800 600)},numericality: { only_integer: true }

end
