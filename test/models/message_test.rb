require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  test 'responds to name, email, subject and content' do
    msg = Message.new
    [:name, :email, :subject, :content].each do |attr|
      assert msg.respond_to? attr
    end
  end
end