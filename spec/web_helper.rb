def sign_up
  visit '/chitter/sign_up'
  fill_in 'email', with: 'poppy@email.com'
  fill_in 'password', with: '1234'
  click_button 'Sign up'
end
