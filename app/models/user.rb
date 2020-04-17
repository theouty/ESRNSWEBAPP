class User < ApplicationRecord
    
    has_many :carts, dependent: :destroy
    has_many :clothes, through: :carts
    has_secure_password
end
