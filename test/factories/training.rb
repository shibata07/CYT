FactoryBot.define do
  factory :training do
    id { 1 }
    muscle_id { 1 }
    name { "スクワット" }
    body { "test"}
    user_id { 1 }
  end
end