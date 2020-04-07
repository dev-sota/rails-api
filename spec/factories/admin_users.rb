FactoryBot.define do
  factory :admin_user do
    name { "name" }
    email { "text@example.com" }                
    password { "password" }
  end
end
