FactoryGirl.define do
  factory :user do
    username('Bob')
    email('bob@email.com')
    password('123456')
    admin false
    id 1
  end

  factory :image do
    name('Picture')
    description('Pretty picture')
    user_id 1
    avatar File.new(Rails.root + 'spec/support/missing.png')
  end

  factory :review do
    author('Steve')
    content('Nice!')
    image_id 1
  end
end
