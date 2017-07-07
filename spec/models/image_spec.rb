require 'rails_helper'

describe Image do
  it { should have_many :reviews}
  it { should validate_presence_of :name }
  it { should validate_presence_of :portfolio }
  it { should validate_presence_of :description }
  it { should validate_presence_of :price }
  it { should have_attached_file(:avatar) }
  it { should validate_attachment_content_type(:avatar).
              allowing('image/png', 'image/gif').
              rejecting('text/plain', 'text/xml') }
end
