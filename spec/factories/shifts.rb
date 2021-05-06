FactoryBot.define do
  factory :shift do
    shift {"日勤,日勤,日勤,休,日勤,夜勤,日勤,準夜勤,日勤,,日勤,日勤,日勤,,日勤,,日勤,日勤,遅出,日勤,日勤,日勤,日勤,日勤,日勤,日勤,日勤,日勤,日勤,日勤"}
    month_id {8}
    year_id {2021}
    association :user
  end
end
