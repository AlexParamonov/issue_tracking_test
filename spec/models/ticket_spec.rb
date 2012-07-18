require_relative '../../app/models/ticket'
require_relative '../spec_helper_lite'

describe 'Ticket' do
  context 'when created' do
    let(:ticket) do
      Ticket.new.tap do |t|
        t.stub(:generate_reference_code) { "ABC_123" }
      end
    end

    describe 'an email' do
      it 'should be send'
      it 'should include ticket uniq identifier'
      it 'should include ticket URL'
    end

    it 'should get reference code' do
      ticket.reference_code.should_not be_nil
    end

    describe 'status' do
      it 'should be "Waiting for staff response" by default'
    end
  end
end
