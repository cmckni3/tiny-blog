class Blog < ActiveRecord::Base
  belongs_to :user

  has_many :posts

  validates :title, :slug, presence: true
  validates :slug, uniqueness: true

  def to_param
    slug
  end
end
