class Photo < ActiveRecord::Base
	attr_accessible :image, :description
	has_attached_file :image, :styles=>{:medium => "300x300>", :thumb=>"100x100>"}
	belongs_to :user
end
