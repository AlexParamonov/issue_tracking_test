require_relative 'action_framework'

class TestUser
  include Rails.application.routes.url_helpers
  include ActionFramework

  def act_as(role)
    self.extend class_eval(role.to_s)
  end

  def should_be_at(path)
    current_path.should == path
  end

  def visit_root
    visit '/'
  end
end
