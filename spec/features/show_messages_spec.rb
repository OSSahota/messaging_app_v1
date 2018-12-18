feature 'Shows app title' do
  scenario 'shows a title of app' do
    visit '/'
    expect(page).to have_content 'Messaging app'
  end
end

feature 'Request input' do
  scenario 'Asks for a meesage to be entered' do
    visit '/'
    fill_in :message, with: 'First message'
    click_button 'Submit'
    expect(page).to have_content 'First message'
  end
end

feature 'Message and time' do
  before do
      Timecop.freeze(Time.local(2018,12,18,15,38,0))
    end

  after do
    Timecop.return
  end

  scenario 'returns message and time' do
    visit '/'
    fill_in :message, with: 'First message'
    click_button 'Submit'
    expect(page).to have_content "First message - 2018-12-18 15:38:00 +0000"
  end
end

feature 'Message history' do
  scenario 'returns all messages' do
    Timecop.freeze(Time.local(2018,12,18,15,38,0))
    visit '/'
    fill_in :message, with: 'First message'
    click_button 'Submit'
    Timecop.return
    Timecop.freeze(Time.local(2018,12,18,15,40,0))
    fill_in :message, with: 'Second message'
    click_button 'Submit'
    Timecop.return
    expect(page).to have_content "First message - 2018-12-18 15:38:00 +0000"
    expect(page).to have_content "Second message - 2018-12-18 15:40:00 +0000"
  end
end
