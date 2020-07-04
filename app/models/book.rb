class Book < ApplicationRecord
    has_many :comments
    belongs_to :genre

    validates :title, presence: true

end
