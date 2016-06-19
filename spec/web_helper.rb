def sign_up
  visit '/chitter/sign_up'
  fill_in 'email', with: 'poppy@email.com'
  fill_in 'password', with: '1234'
  fill_in 'name', with: 'poppy'
  fill_in 'user_name', with: 'poppyrp'
  click_button 'Sign up'
end
