class Song < ActiveRecord::Base
	has_many :adds #need to add after creating the references to model Song
	validates :title, :artist, presence: true, length: {minimum:2}
end
