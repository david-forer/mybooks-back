class Book < ApplicationRecord
   
    belongs_to :genre
    has_many :comments

    # validates :title, presence: true

end
