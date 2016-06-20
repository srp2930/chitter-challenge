feature 'sign-up' do
  scenario 'I want to sign up to Chitter' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome, poppy@email.com')
    expect(User.first.email).to eq('poppy@email.com')
  end

  scenario "I can't sign up without an email address" do
    expect { sign_up(email: nil) }.not_to change(User, :count)
  end

  scenario 'I cannot sign up with an existing email address' do
    sign_up
    expect{ sign_up }.to_not change(User, :count)
    expect(page).to have_content('Email is already taken')
    expect(page).to have_content('User name is already taken')
  end

  scenario 'I cannot sign up with an existing user_name' do
    sign_up
    expect{ sign_up }.to_not change(User, :count)
    expect(page).to have_content('User name is already taken')
  end
end
