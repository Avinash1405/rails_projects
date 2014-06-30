class StaticPagesController < ApplicationController
  def home
    logger.debug "This is from home"
  end
#for showing all users
  def show
    @u = User.all
     #shows all user
 
  end

#for showing products of user
  def help
    @id = User.find(params[:user_id])
    puts "user_id in help #{@id}"
    @pro = @id.products.all
  end

#Form for creating new product  
  def createproduct
    @product = Product.new
    @id = params[:new_id]
  end

#Form for creating new user  and product
  def newuser
	@user = User.new
  @product = Product.new
  end

#For creating new user
  def create_user
    args
    @user = User.new(name: @name,occupation: @occupation)
    @product = Product.new(product_name: @product_name,value:@product_value)
    unless (@user.save & @product.save)
      render 'newuser'
    end
  end


#for creating new product
  def newproduct

    @user_id = User.find(params[:new_product][:hidden])
    @id=@user_id.id
    p_name = params[:new_product][:product_name]
    p_value = params[:new_product][:product_value]
    @product = @user_id.products.new(product_name:p_name,value:p_value)
    unless (@product.save)
      render 'createproduct'
    end
  end

  private 
  def args
  @name = params[:name]
  @occupation = params[:occupation]
  @product_name= params[:product_name]
  @product_value=params[:product_value]
  end


end
