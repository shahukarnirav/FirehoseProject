class Pic < ActiveRecord::Base
  
  mount_uploader :image, ImageUploader

  attr_accessible :hour, :emotion, :Learned, :image

	EMOTIONS = [ "Stoked", "Anxious", "Happy", "Frustrated" ]  

	validates :emotion, :inclusion => { :in => EMOTIONS }
end
