class List < ApplicationRecord
    belongs_to :user

    with_options presence: true do
        validates :listname
        validates :shift
    end
    
end
