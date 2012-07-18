class ReferenceCode
  def self.generate_for_ticket(ticket)
    prefix = ticket.department.short_code
    ticket_id = ticket.id

    "#{prefix}_#{ticket_id}"
  end
end
