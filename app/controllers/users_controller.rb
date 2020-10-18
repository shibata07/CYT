class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	end

	def index
		@users = User.all
	end

	def follows
		@user = User.find(params[:id])
	end

	def followers
		@user = User.find(params[:id])
	end

	def search
		@users = User.search(params[:search])
	end
end
