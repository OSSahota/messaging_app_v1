feature 'user details'do
  scenario 'enter user name' do
    visit '/'
    fill_in :user_name, with: 'Arjun'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Arjun'
  end
end
