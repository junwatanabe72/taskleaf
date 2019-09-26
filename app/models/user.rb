class User < ApplicationRecord     
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    
    has_many :tasks, dependent: :destroy
    
    has_secure_password
end
