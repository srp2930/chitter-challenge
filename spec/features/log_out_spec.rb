feature 'logging out' do

  before(:each) do
    User.create(email: 'test@test.com', password: 'test', user_name: 'test1', name: 'mr test')
  end

  scenario 'while being signed in' do
    sign_in(email: 'test@test.com',   password: 'test')
    click_button 'Sign out'
    expect(page).to have_content('goodbye!')
    expect(page).not_to have_content('Welcome, test@test.com')
  end
end
