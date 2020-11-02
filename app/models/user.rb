class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :attendances

  validates :name, length: {minimum: 5}, presence: true
  validates :address, length: {minimum: 10}, presence: true
  validates :encrypted_password, presence: true

  after_create :assign_default_role

  paginates_per 4

  def assign_default_role
    self.add_role(:mahasiswa) if self.roles.blank?
  end
end
