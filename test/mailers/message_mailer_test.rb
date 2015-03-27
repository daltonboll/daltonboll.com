require 'test_helper'

class MessageMailerTest < ActionMailer::TestCase
  test "message me" do

    msg = Message.new(name: 'Annie',
      email: 'annie@example.com',
      subject: 'Guten Tag!',
      content: 'Auf Wiedersehen!')

    email = MessageMailer.message_me(msg).deliver_now

    refute ActionMailer::Base.deliveries.empty? 
    assert_equal ['daltonboll@gmail.com'], email.to
    assert_equal ['annie@example.com'], email.from
    assert_equal 'Guten Tag!', email.subject
    assert_equal 'Auf Wiedersehen!', email.body.to_s
  end
end