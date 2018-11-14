describe "Attacks can do damage", type: :feature do
  it "Player1 attacked can show damage to Player2\'s Hit points" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Wolverine HP: 50"
  end
end
