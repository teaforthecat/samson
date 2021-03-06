class FlowdockNotificationRenderer
  def self.render(deploy)
    controller = ActionController::Base.new
    view = ActionView::Base.new(Rails.root.join('app/views/flowdock'), {}, controller)
    locals = { deploy: deploy, changeset: deploy.changeset }
    view.render(template: 'notification', locals: locals).chomp
  end
end
