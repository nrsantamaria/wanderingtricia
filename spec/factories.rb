FactoryGirl.define do
  factory :user do
    username('Bob')
    email('b@email.com')
    password('123456')
    admin true
    id 5
  end

  factory :image do
    name('Picture')
    description('Pretty picture')
    portfolio('Landscape')
    price('50')
    user_id 5
    avatar File.new(Rails.root + 'spec/support/missing.png')
  end

  factory :review do
    author('Steve')
    content_body('Nice!')
    image_id 1
  end
end
