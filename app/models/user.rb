class User < ApplicationRecord
    validates :name, presence: true
    validates :mobile_number, format: { with: /\d[0-9]\)*\z/,
         message: "only allows numbers" }
    validates :email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i ,message: "proper email" }
    validates :address, presence: true
    has_one :vendor 
    
end
