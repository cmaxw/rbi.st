class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add attribute, (options[:message] || "is not an email") unless
      value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  end
end

class User
  include Sandra

  attr_accessor :password, :password_confirmation

  has_secure_password

  key_attribute :username, :string
  column :password_digest, :string
  column :email, :string
  column :bio, :string

  validates :email, :presence => true, :email => true

  def self.authenticate(username, password)
    user = User.get(username)
    user if user && user.authenticate(password)
  end
end
