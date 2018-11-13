# feature 'Testing infrastructure' do
#   scenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature 'Entering names' do
  scenario 'check player names are visable on page' do
    visit('/')
    fill_in :player_one, with: 'The Hulk'
    fill_in :player_two, with: 'Wolverine'
    click_button 'Submit'
    expect(page).to have_content 'The Hulk vs. Wolverine'
  end
# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points
feature 'Viewing hit points' do
  scenario 'player_one can see player_two\'s hit points' do
    visit('/')
    fill_in :player_one, with: 'The Hulk'
    fill_in :player_two, with: 'Wolverine'
    click_button 'Submit'
    click_button 'Show Hit points'
    expect(page).to eq "Hit points = 60"
    end
  end
end
