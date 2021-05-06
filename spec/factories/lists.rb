FactoryBot.define do
  factory :list do
    listname {"リスト名"}
    shift {"<option>日勤</option><option>夜勤</option><option>準夜勤</option><option>有休</option><option>日勤/休</option><option>休</option>"}
    association :user
  end
end
