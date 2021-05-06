require 'rails_helper'

RSpec.describe Shift, type: :model do
  describe '#create' do
    before do
      @shift = FactoryBot.build(:shift)
    end

    context '正常系' do
      it 'shift,month_id,year_id,user_idがあれば登録できる' do
        expect(@shift).to be_valid
      end
    end

    context '異常系' do
      it 'shiftが空では登録できない' do
        @shift.shift = ""
        @shift.valid?
        expect(@shift.errors.full_messages).to include("Shift can't be blank")
      end
      it 'month_idが空では登録できない' do
        @shift.month_id = ""
        @shift.valid?
        expect(@shift.errors.full_messages).to include("Month can't be blank")
      end
      it 'month_idが数字でなければ登録できない' do
        @shift.month_id = "a"
        @shift.valid?
        expect(@shift.errors.full_messages).to include("Month is not a number")
      end
      it 'year_idが空では登録できない' do
        @shift.year_id = ""
        @shift.valid?
        expect(@shift.errors.full_messages).to include("Year can't be blank")
      end
      it 'year_idが数字でなければ登録できない' do
        @shift.year_id = "a"
        @shift.valid?
        expect(@shift.errors.full_messages).to include("Year is not a number")
      end
      it 'user_idが空では登録できない' do
        @shift.user = nil
        @shift.valid?
        expect(@shift.errors.full_messages).to include("User must exist")
      end
    end
  end
end
