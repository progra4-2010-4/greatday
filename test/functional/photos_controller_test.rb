require 'test_helper'

class PhotosControllerTest < ActionController::TestCase
  # Replace this with your real tests.
setup do 
     @photo = photos :one	
     @new_photo =Photo.new()
     @user = users :one
     sign_in users(:one)
   end

end
