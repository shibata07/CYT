class TrainingsController < ApplicationController
	def new
		@training = Training.new
	end

	def create
		@training = Training.new(training_params)
		if @training.save
			redirect_to training_path(@training.id)
		else
			render :new
		end
	end

	def show
		@training = Training.find(params[:id])
	end

	def index
		@trainings = Training.all.order(created_at: "DESC")
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
			redirect_to training_path(@training)
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
			params.require(:training).permit(:muscle_id, :name, :body, :user_id)
		end
end
