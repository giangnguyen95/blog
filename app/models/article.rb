class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy #if you deletr a article -> comments need to be deleted 
	validates :title, presence: true, length: { minimum: 5}
end
