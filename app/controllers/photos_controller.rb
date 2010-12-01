class PhotosController < ApplicationController
	def upload
		File.open(upload path, 'w')do |f|
		 f.write request.raw_post
		end
		render :text =>"ok"
	end
	
	def create
		@photo = Photo.new(params[:photo])
		@photo.image = File.new(upload_path)
		@photo.save
		redirect_to @photo
	end
	
	def show
		@photo = Photo.find(params[:id])
	end

	def index
		@photo = Photo.all
	end	



	private
	def upload_path
		file_name = session[:session_id].to_s + '.jpg'
		File.join(RAILS_ROOT, 'public', 'uploads', file_name)
	end
end
