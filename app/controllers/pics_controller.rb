class PicsController < ApplicationController
	def index
		@pics = Pic.all

	end

	def new
		@pic = Pic.new
	end

	def create
		@pic = Pic.create(params[:pic])
		if @pic.valid?
			redirect_to pics_path
		else
			render :new, :status => :unprocessable_entity
		end
	end

	def edit
		@pic = Pic.find(params[:id])
	end

	def update
		@pic = Pic.find(params[:id])
		@pic.update_attributes(params[:pic])

		if @pic.valid?
			redirect_to pics_path
		else
			render :edit, :status => :unprocessable_entity
		end
	end

	def destroy
		@pic = Pic.find(params[:id])
		@pic.destroy()

		if @pic.valid?
			redirect_to pics_path

		else
			render :destroy, :status => :unprocessable_entity
		end
	end
end
