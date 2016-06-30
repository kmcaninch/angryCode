require 'watir-webdriver'

def loginEasy
  @browser.goto 'http://ec2-54-191-181-182.us-west-2.compute.amazonaws.com/users/sign_in'
  @browser.text_field(:id => 'user_email').set 'kelly@test.com'
  @browser.text_field(:id => 'user_password').set 'test123'
  @browser.button(:id => 'user_submit').click
end

def logoutEasy
  puts @browser.cookies.to_a
  puts 'yay cookies!'
  @browser.cookies.clear
  puts @browser.cookies.to_a
  puts 'bye cookies!'
end