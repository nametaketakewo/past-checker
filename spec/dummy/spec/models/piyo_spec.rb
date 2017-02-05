require 'rails_helper'

RSpec.describe Piyo, type: :model do
  describe '#started?(date)' do
    context 'Date.today > ll_be_started_at' do
      it 'returns true' do
        expect(Piyo.new(ll_be_started_at: Date.today - 1.day).started?).to eq true
      end
    end
    context 'Date.today < ll_be_started_at' do
      it 'returns false' do
        expect(Piyo.new(ll_be_started_at: Date.today + 1.day).started?).to eq false
      end
    end
    context 'Date.today == ll_be_started_at' do
      it 'returns false' do
        expect(Piyo.new(ll_be_started_at: Date.today).started?).to eq true
      end
    end
    context 'll_be_started_at == nil' do
      it 'returns nil' do
          expect(Piyo.new(ll_be_started_at: nil).started?).to eq nil
      end
    end
  end

  describe '#ended?(datetime)' do
    context 'Time.now > will_be_ended_at' do
      it 'returns true' do
          expect(Piyo.new(will_be_ended_at: Time.now - 1.day).ended?).to eq true
      end
    end
    context 'Time.now < will_be_ended_at' do
      it 'returns false' do
          expect(Piyo.new(will_be_ended_at: Time.now + 1.day).ended?).to eq false
      end
    end
    context 'Time.now == will_be_ended_at' do
      it 'returns true' do
          expect(Piyo.new(will_be_ended_at: Time.now).ended?).to eq true
      end
    end
    context 'will_be_ended_at == nil' do
      it 'returns true' do
          expect(Piyo.new(will_be_ended_at: nil).ended?).to eq nil
      end
    end
  end
end
