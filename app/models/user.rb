class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :blog
  has_many :posts, through: :blog

  accepts_nested_attributes_for :blog

  validates :time_zone, inclusion: ActiveSupport::TimeZone.all.map(&:name)
  validates :email, uniqueness: true
end
