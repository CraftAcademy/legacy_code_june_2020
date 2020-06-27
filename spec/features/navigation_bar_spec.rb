require "rails_helper"
 feature ' user see content of navigation bar' do
   context 'navigation bar' do
     let(:user) { create(:user, name: 'sima', email: 'example@mail.com')}
       before do 
        login_as(user, scope: :user)
        visit root_path
    end

    it 'display all navigation link ' do
       expect(page).to have_link 'CA Mailboxer'
       expect(page).to have_link 'Hello, sima'
       expect(page).to have_link 'Inbox'
       expect(page).to have_link 'Logout'
    end

  end

end
