class ArticlesController < ApplicationController
	
	def new
		@article = Article.new
		render 'show_form'
	end

	def create
		@article = Article.create(article_params)
		@articles = Article.all
		render 'hide_form'
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		@article = Article.all
	end

	def edit
		@article = Article.find(params[:id])
		render 'show_form'
	end

	def update
		@article = Article.find(params[:id])
		@article.update_attributes(article_params)
		@articles = Article.all
		render 'hide_form'
	end

	def show
		@article = Article.find(params[:id])
	end

	private

	def article_params
		params.require(:article).permit(:title, :body)
	end

end
