class ArticlesController < ApplicationController
	
	def new
		@article = Article.new
		render 'show_form'
	end

	def create
		@article = Article.new(article_params)
		article_save
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
		@article.assign_attributes(article_params)
		article_save
	end

	def show
		@article = Article.find(params[:id])
	end

	private

	def article_save
		if @article.save
			@articles = Article.all
			render 'hide_form'
		else
			render 'show_form'
		end
	end

	def article_params
		params.require(:article).permit(:title, :body)
	end

end
