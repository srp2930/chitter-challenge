feature 'sign-up' do
  scenario 'I want to sign up to Chitter' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome, poppy@email.com')
    expect(User.first.email).to eq('poppy@email.com')
  end
end
