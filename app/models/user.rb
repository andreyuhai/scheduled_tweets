# email:string
# password_digest:string
#
# has_secure_password also adds some virtual attributes
# password:string virtual
# password_confirmation:string virtual
class User < ApplicationRecord
  has_secure_password
  has_many :twitter_accounts
  has_many :tweets

  # or you can do the same in migration by specifying null: false
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'must be a valid email address' }
  validates :email, uniqueness: true
end
