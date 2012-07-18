class Ticket
  class Status
    WAITING_CODE = 1
    WAITING_TITLE = "Waiting for staff response"

    attr_accessor :code, :title

    def initialize(code, title)
      @code, @title = code, title
    end

    def self.waiting
      new(WAITING_CODE, WAITING_TITLE)
    end
  end
end
