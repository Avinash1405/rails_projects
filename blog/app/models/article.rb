class Article < ActiveRecord::Base
validates:title,presence:true,length:{minimum:5}
#attr_accessor:value
#value = Article.find(params[:id])
#puts "value"
end
