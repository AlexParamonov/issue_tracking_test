require_relative '../spec_helper_lite'

describe 'Ticket' do
  context 'when created' do
    describe 'an email' do
      it 'should be send'
      it 'should include ticket uniq identifier'
      it 'should include ticket URL'
    end

    describe 'status' do
      it 'should be "Waiting for staff response" by default'
    end
  end
end
