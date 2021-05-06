require 'rails_helper'

RSpec.describe List, type: :model do
  describe '#create' do
    before do
      @list = FactoryBot.build(:list)
    end
  
    context "正常系" do
      it 'listname,shift,user_idがあれば登録できる' do
        expect(@list).to be_valid
      end
    end

    context '異常系' do
      it 'listnameが空では登録できない' do
        @list.listname = ""
        @list.valid?
        expect(@list.errors.full_messages).to include("Listname can't be blank")
      end
      it 'shiftが空では登録できない' do
        @list.shift = ""
        @list.valid?
        expect(@list.errors.full_messages).to include("Shift can't be blank")
      end
      it 'user_idが空では登録できない' do
        @list.user = nil
        @list.valid?
        expect(@list.errors.full_messages).to include("User must exist")
      end
    end
  end
end
