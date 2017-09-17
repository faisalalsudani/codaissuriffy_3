FactoryGirl.define do
  factory :song do
      name  { Faker::Witcher.quote }
  end
end
