class Member < ApplicationRecord
  has_many :memberships, dependent: :delete_all
  has_many :gyms, through: :memberships
  has_many :gym_reviews
  has_many :gyms, through: :gym_reviews
  has_many :coach_reviews
  has_many :coaches, through: :coach_reviews
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :name, presence: true
  validate :age_range
  validates :address, presence: true
  validates :password, presence: true
  has_secure_password


  
  
  def age_range
    if self.age < 1
      errors.add(:age, "must be over 0")
    end
  end
  
  
end

# attr_accessor :email, :password, :password_confirmation
# before_save :encrypt_password
# validates_confirmation_of :password
# validates_presence_of :password, :on => :create

# def self.authenticate(email, password)
#   user = find_by_email(email)
#   if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
#     user
#   else  
#     nil
#   end
# end

# def encrypt_password
#   if password.present?
#     self.password_salt = BCrypt::Engine.generate_salt
#     self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
#   end
# end