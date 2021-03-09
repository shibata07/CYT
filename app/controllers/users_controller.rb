class UsersController < ApplicationController

	before_action :authenticate_user!, only: %i[search]

	def show
		@user = User.find(params[:id])
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
