feature 'Entering names' do
  scenario 'check player names are visable on page' do
    sign_in_and_play
    expect(page).to have_content 'The Hulk vs. Wolverine'
  end
# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points
feature 'Viewing hit points' do
  scenario 'player_one can see player_two\'s hit points' do
    sign_in_and_play
    expect(page).to have_content "The Hulk HP: 60"
    end
  end
end
