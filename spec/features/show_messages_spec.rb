feature 'It shows a message' do
  scenario 'shows a message' do
    visit '/'
    fill_in :message, with: 'testing'
    click_button 'Submit'
    expect(page).to have_content 'testing'
  end
end
