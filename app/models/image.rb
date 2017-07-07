class Image < ActiveRecord::Base
  belongs_to :user
  has_many :reviews
  validates :name, :portfolio, :price, :description, :presence => true

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  scope :landscape, -> { where(portfolio: 'Landscape')}
  scope :hospitality, -> { where(portfolio: 'Hospitality')}
  scope :interior, -> { where(portfolio: 'Interior')}
end
