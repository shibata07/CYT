class TrainingsController < ApplicationController

	before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

	def new
		@training = Training.new
	end

	def create
		@training = Training.new(training_params)
		if @training.save
			redirect_to training_path(@training.id), notice: 'Posted successfully'
		else
			render :new
		end
	end

	def show
		@training = Training.find(params[:id])
		@comment = Comment.new
		@comments = @training.comments
	end

	def index
		if params[:sort] == 'mine'
			@trainings = Training.where(user_id: current_user.id)
		elsif params[:sort] == 'followings'
			@trainings = Training.where(user_id: current_user.followings.pluck(:id))
		else
			@trainings = Training.all
		end
		@trainings = @trainings.order(created_at: "DESC").page(params[:page]).per(10)
	end

	def edit
		@training = Training.find(params[:id])

		if @training.user.id == current_user.id
			render :edit
		else
			redirect_to training_path(@training)
		end
	end

	def update
		@training = Training.find(params[:id])
		if @training.update(training_params)
			redirect_to training_path(@training), notice: 'Editing was successful'
		else
			render :edit
		end
	end

	def destroy
		@training = Training.find(params[:id])
		if @training.destroy
			redirect_to trainings_path
		end
	end

	private
		def training_params
			params.require(:training).permit(:muscle_id, :name, :body, :user_id, training_images_images: [])
		end
end
