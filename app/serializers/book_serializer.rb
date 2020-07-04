class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :author, :genre, :image_url, :description, :genre_id, :genre
  # belongs_to :genre
end
