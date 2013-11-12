class Post < ActiveRecord::Base
	has_many :commenter
	validates :title, presence: true,
                    length: { minimum: 5 }
end
