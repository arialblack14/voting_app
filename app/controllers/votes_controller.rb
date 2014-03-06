class VotesController < ApplicationController
	load_and_authorize_resource :nested => :article


	def create
		@vote = @article.votes.build
		
		@vote.save!

		respond_to do |format|
      format.js { render :layout => false }
    end
		
	end
end
