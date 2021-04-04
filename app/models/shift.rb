class Shift < ApplicationRecord
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :month
    belongs_to :year
    belongs_to :user
    with_options presence: true do
        validates :month_id
        validates :year_id
        validates :shift
    end
end
