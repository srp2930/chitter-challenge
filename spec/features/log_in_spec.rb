feature 'logging in' do
  let!(:user) do
    User.create(email: 'user@example.com',
                password: 'secret1234',
                user_name: 'user1',
                name: 'ms user')
  end

  scenario 'log into chitter with correct credentials' do
    sign_in(email: user.email,   password: user.password)
    expect(page).to have_content "Welcome, #{user.email}"
  end
end
