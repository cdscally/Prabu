

feature 'Testing names' do

    scenario 'Allows players to fill in their names and see them on screen' do
       sign_in_and_play
       expect(page).to have_content 'Alice vs Bob'
    end


end
