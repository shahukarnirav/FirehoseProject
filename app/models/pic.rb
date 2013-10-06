class Pic < ActiveRecord::Base
  attr_accessible :hour, :emotion, :Learned

	EMOTIONS = [ "Stoked", "Anxious", "Happy", "Frustrated" ]  

	validates :emotion, :inclusion => { :in => EMOTIONS }
end
