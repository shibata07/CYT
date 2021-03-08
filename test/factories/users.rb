FactoryBot.define do
  factory :user do
    id { 1 }
    name { "test" }
    email { "aaaa@aa" }
    password { "aaaaaa" }
    body { "よろしくお願いします" }
  end
end
