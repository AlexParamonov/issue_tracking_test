require_relative 'ticket/status'

class Ticket
  attr_accessor :status

  def reference_code
    @reference_code ||= generate_reference_code
  end

  def status
    @status ||= default_status

  end

  private
  def generate_reference_code
    prefix = self.department_code
    ticket_id = self.id

    "#{prefix}_#{ticket_id}"
  end

  def default_status
    Ticket::Status.waiting
  end
end
