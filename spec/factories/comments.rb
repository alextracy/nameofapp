# spec/factories/contacts.rb
require 'rails_helper'

FactoryGirl.define do

  factory :comment do 
    body 'yolo'
    user 'sdfom'
    product 'a@b.com'
    rating 3
  end

end
