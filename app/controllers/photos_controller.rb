class PhotosController < ApplicationController
        def upload
                File.open(upload_path, 'w')do |f|
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
                @photo = Photo.find params[:id]
        end

        def index
                @photos = Photo.all
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

