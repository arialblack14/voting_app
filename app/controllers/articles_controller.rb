class ArticlesController < ApplicationController
	load_and_authorize_resource

	def new
		render 'show_form'
	end

	def create
		article_save
	end

	def destroy
		@article.destroy
		
		respond_to do |format|
      format.js { render :layout => false }
    end

		@article = Article.all
	end

	def edit
		render 'show_form'
	end

	def update
		@article.assign_attributes(article_params)
		article_save
	end

	def show
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
