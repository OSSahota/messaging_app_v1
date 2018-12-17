feature 'testing infrastructure' do
  scenario 'test access to the root' do
    visit '/'
    expect(page).to have_content 'Testing Messaging app infrastructure!'
  end
end
