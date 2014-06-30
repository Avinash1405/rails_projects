class ArticlesController < ApplicationController
#New action will called for new_article_path
	def new
		@article = Article.new
	end
#Index action will be called for get
	def index
  		@article = Article.all
	end
#create action will be called for post 
	def create
		#render plain: params[:article].inspect
		puts "In create method"
		@article = Article.new(article_params)
		if @article.save then
  		redirect_to @article
  		else
  			render 'new'
  		end

  	end
#update will be executed if  we use method patch
	def update
 		 @article = Article.find(params[:id])
 			puts  "In update #{@article}"
  		if @article.update(article_params)
    		redirect_to @article
  		else
    		render 'edit'
  		end
	end
#executed if use edit_article_path
	def edit
		b=params[:id]
  		@article = Article.find(b)
 	end
#executed if use article_path
	def show
		a=params[:id]
		puts "In show method params #{a}"
  		@article = Article.find(a)
  		puts "In show method article #{@article}"
  		puts "title @"
	end
#executed if method is delete
	def destroy
		@article=Article.find(params[:id])
		 @article.destroy
 		redirect_to articles_path

	
	end
  	private 
  		def article_params
  			 params.require(:article).permit(:title, :text)


  		end 
end
