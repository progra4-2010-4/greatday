class PhotosController < ApplicationController
	def upload
		File.open(upload_path, 'w')do |f|
		 f.write request.raw_post
		end
		render :text =>"ok"
	end
	
	def create
		@photo = Photo.new(params[:photo])
		@photo.user = current_user
		@photo.user.image = File.new(upload_path)
		@photo.save
		redirect_to @photo
	end
	
	def show
		#@photo = Photo.find params[:id]
		@photo = current_user.photos.find params[:id]
		respond_to do |format|
    		 format.html # show.html.erb
		 format.xml  { render :xml => @post }
		end
	end

	def index
		#@photos = Photo.all
		@photos = current_user.photos.order "created_at DESC"
		@user = current_user
		respond_to do |format|
   		 format.html # index.html.erb
		 format.xml  { render :xml => @posts }
  		end
	end

	def new
		@photo = Photo.new
		respond_to do |format|
			format.html # new.html.erb
			format.xml  { render :xml => @photo }
		end

	end	

	private
	def upload_path
		file_name = session[:session_id].to_s + '.jpg'
		File.join(::Rails.root.to_s, 'public', 'uploads', file_name)
	end
end
