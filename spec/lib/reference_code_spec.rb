require_relative '../spec_helper_lite'
require_relative '../../lib/reference_code'

describe ReferenceCode do
  it 'should create refcode for ticket' do
    department = stub
    department.stub(:short_code) { "ABC" }
    ticket = stub
    ticket.stub(:id) { 123 }
    ticket.stub(:department ) { department }
    refcode = ReferenceCode.generate_for_ticket(ticket)

    refcode.should eq "ABC_123"
  end
end
