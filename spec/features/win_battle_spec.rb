describe 'Winner of battle',type: :feature do
  it 'shows the winner of the battle' do
  sign_in_and_play
  attack_player
  expect(page).to have_content "The Hulk is the winner"
  end
end
