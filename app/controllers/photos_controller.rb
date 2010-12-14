class PhotosController < ApplicationController
	def upload
		File.open(upload_path, 'w')do |f|
		 f.write request.raw_post
		end
		render :text =>"ok"
	end
	
	def create
		@photo = Photo.new params[:photo]
		@photo.user = current_user
		@photo.image = File.new(upload_path)
		@photo.save
		render :show
	end
	
	def show
		#@photo = Photo.find params[:id]
		@photos= Photo.find params[:user_id]
		@user = current_user
		reder :index
		respond_to do |format|
    		 format.html # show.html.erb
		 format.xml  { render :xml => @post }
		end
	end

	def index
		#@photos = Photo.all
		@user = current_user
		@photos = Photo.find params[:user_id]
		respond_to do |format|
   		 format.html # index.html.erb
		 format.xml  { render :xml => @posts }
  		end
	end

	def new
		@photo = Photo.new
		@user = current_user
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
