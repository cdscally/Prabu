feature 'Attack player' do
  scenario 'Provides confirmation of attack' do
    sign_in_and_play
    click_button('Attack Bob!!!')
    expect(page).to have_content 'You have successfully attacked Bob'
  end

  scenario 'attack reduces hp by 10' do
    sign_in_and_play
    click_button('Attack Bob!!!')
    click_button("Bob's Hitpoints")
    expect(page).to have_content 'Points: 90'
  end

  scenario 'ends turn and switches' do
    sign_in_and_play
    click_button('Attack Bob!!!')
    click_button("Bob's Turn")
    expect(page).to have_selector(:button, 'Attack Alice!!!')
  end

  scenario 'switching changes active player' do
    sign_in_and_play
    click_button('Attack Bob!!!')
    click_button("Bob's Turn")
    click_button('Attack Alice!!!')
    expect(page).to have_content 'You have successfully attacked Alice'
  end
end
