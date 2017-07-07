class Review < ActiveRecord::Base
  belongs_to :image
  validates :author, :content_body, :presence => true
end
