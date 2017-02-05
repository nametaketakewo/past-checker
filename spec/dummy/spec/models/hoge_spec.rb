require 'rails_helper'

RSpec.describe Hoge, type: :model do
  describe '#started?(datetime)' do
    context 'Time.now > ll_be_started' do
      it 'returns true' do
        expect(Hoge.new(ll_be_started: Time.now - 1.day).started?).to eq true
      end
    end
    context 'Time.now < ll_be_started' do
      it 'returns false' do
        expect(Hoge.new(ll_be_started: Time.now + 1.day).started?).to eq false
      end
    end
    context 'Time.now == ll_be_started' do
      it 'returns false' do
        expect(Hoge.new(ll_be_started: Time.now).started?).to eq true
      end
    end
    context 'll_be_started == nil' do
      it 'returns nil' do
          expect(Hoge.new(ll_be_started: nil).started?).to eq nil
      end
    end
  end

  describe '#ended?(date)' do
    context 'Date.today > will_be_ended' do
      it 'returns true' do
          expect(Hoge.new(will_be_ended: Date.today - 1.day).ended?).to eq true
      end
    end
    context 'Date.today < will_be_ended' do
      it 'returns false' do
          expect(Hoge.new(will_be_ended: Date.today + 1.day).ended?).to eq false
      end
    end
    context 'Date.today == will_be_ended' do
      it 'returns true' do
          expect(Hoge.new(will_be_ended: Date.today).ended?).to eq true
      end
    end
    context 'will_be_ended == nil' do
      it 'returns true' do
          expect(Hoge.new(will_be_ended: nil).ended?).to eq nil
      end
    end
  end
end
