class Genre < ApplicationRecord
   has_many :books, dependent: :destroy
#    has_many :comments, through: :books
end
