require "rails_helper"

feature 'User can log out' do
    context 'Sign out of account' do
    let(:user) { create(:user, name: 'Peter', password: '23456789', email: 'abc@mail.com') }
    before do
        login_as(user, scope: :user)
        visit root_path
        click_on 'Logout'
    end

    it 'Displays a successful signout message' do
        expect(page).to have_content 'Signed out successfully.'    
    end
end
end