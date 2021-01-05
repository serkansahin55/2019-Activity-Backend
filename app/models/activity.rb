class Activity < ApplicationRecord
    has_many :comments, dependent: :destroy
    
end
