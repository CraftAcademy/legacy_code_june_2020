
RSpec.describe Recipient, type: :model do
  describe 'db table' do
      it {is_expected.to have_db_column :name}
  end

  describe 'validations' do
      it {is_expected.to validate_presence_of :name}
  end

  describe 'Factory' do
      it 'should have valid factory' do
          expect(FactoryBot.create(:recipient)).to be_valid
      end
  end
end
