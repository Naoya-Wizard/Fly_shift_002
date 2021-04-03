class Shift < ApplicationRecord
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :month
    belongs_to :user

end
