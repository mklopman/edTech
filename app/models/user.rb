class User < ApplicationRecord
	has_secure_password
	has_many :posts, :dependent => :delete_all
	has_many :comments, :dependent => :delete_all
	has_many :ratings, :dependent => :delete_all


has_secure_password
  before_validation :downcase_email
  validates :email,
      presence: true,
      uniqueness: true,
      format: {
        with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/,
        message: "Invalid email address"
      },
      length: {
        minimum: 5,
        message: "How can an emai be less than 5 characters?"
      }
  validates :password, presence: true
  validates :name, presence: true
  
  private
  def downcase_email
    self.email = email.downcase if email.present?
  end


end
