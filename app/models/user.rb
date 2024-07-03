class User < ApplicationRecord
  rolify
  enum role: { user: 0, editor: 1, admin: 2 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_initialize :set_default_role, if: :new_record?

  def set_default_role
           self.role ||= :user
  end
end



