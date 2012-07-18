require_relative '../../app/models/ticket'
require_relative '../spec_helper_lite'

describe 'Ticket' do
  let(:ticket) { Ticket.new }

  describe 'reference code' do
    it 'should be in format DEP_ID' do
      ticket.stub(:id) { 123 }
      ticket.stub(:department_code ) { "ABC" }

      ticket.reference_code.should eq "ABC_123"
    end
  end

  context 'when created' do
    before(:each) do
      ticket.stub(:generate_reference_code) { "ABC_123" }
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
      it 'should be "Waiting for staff response" by default' do
        ticket.status.title.should eq "Waiting for staff response"
      end
    end
  end
end
