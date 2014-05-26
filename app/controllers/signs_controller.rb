class SignsController < ApplicationController
 def create
     @article = Article.find(params[:article_id])
     @sign = @article.signs.create(sign_params)
     redirect_to article_path(@article)
   end
   def destroy
    @article = Article.find(params[:article_id])
    @sign = @article.signs.find(params[:id])
    @sign.destroy
    redirect_to article_path(@article)
  end
   private
     def sign_params
       params.require(:sign).permit(:owner)
     end
 end
