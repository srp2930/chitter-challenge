
module SessionHelpers

  def sign_up(email: 'poppy@email.com', password: '1234', name: 'poppy', user_name: 'poppyrp')
    visit('/chitter/sign_up')
    fill_in :email, with: email
    fill_in :password, with: password
    fill_in :name, with: name
    fill_in :user_name, with: user_name
    click_button 'Sign up'
  end

  def sign_in(email:, password:)
    visit '/sessions/new'
    fill_in :email, with: email
    fill_in :password, with: password
    click_button 'Sign in'
  end

end
