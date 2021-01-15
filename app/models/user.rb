class User < ActiveRecord::Base
    has_many :books
    validates :email, presence: true, uniqueness: true
end
