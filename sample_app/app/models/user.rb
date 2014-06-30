class User < ActiveRecord::Base
	puts "IN ACTIVE MODEL"
	has_many :products
	validates :name, length: {in: 6..10},format: { with: /\A[a-zA-Z]+\z/ ,message:"only letters"}
	validates :occupation,presence: true
	before_save do|i|
    puts "Inside before_save in User"
    self.name = self.name.capitalize

  end
end
