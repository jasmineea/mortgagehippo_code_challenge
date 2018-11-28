class User < ApplicationRecord
<<<<<<< HEAD
	has_secure_password
  has_many :transactions

  validates_length_of       :password, maximum: 72, minimum: 8, allow_nil: true, allow_blank: false
  validates_confirmation_of :password, allow_nil: true, allow_blank: false

  before_validation { 
    (self.email = self.email.to_s.downcase) && (self.username = self.username.to_s.downcase) 
  }

  validates_presence_of     :email
  validates_presence_of     :username
  validates_uniqueness_of   :email
  validates_uniqueness_of   :username

  def can_modify_user?(user_id)
    role == 'admin' || id.to_s == user_id.to_s
  end

  def is_admin?
    role == 'admin'
  end

=======
>>>>>>> 9568bf8e87d3e6ac8c2cfeae9ddc30c4f37c75d1
end
