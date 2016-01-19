FactoryGirl.define do
  factory :user, :class => 'User' do
    sequence :email do |n|
      "person#{n}@example.com"
    end
    password '1234abcd'
    password_confirmation '1234abcd'
  end
end
