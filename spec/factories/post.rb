FactoryGirl.define do
  factory :post, :class => 'Post' do
    sequence :title do |n|
      "Some interesting title #{n}"
    end
    body 'Some interesting body.'
  end
end
