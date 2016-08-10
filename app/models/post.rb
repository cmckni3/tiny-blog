class Post < ActiveRecord::Base
  belongs_to :blog

  validates :title, :content, presence: true

  def modified?
    created_at != updated_at
  end
end
