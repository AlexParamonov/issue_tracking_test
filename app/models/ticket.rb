class Ticket

  def reference_code
    @reference_code ||= generate_reference_code
  end

  def generate_reference_code
    ReferenceCode.generate_for_ticket(self)
  end
end
