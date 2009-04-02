class Rightscaler::Manage::Status < Rightscaler::Resource
  
  %w(queued in_progress aborted completed failed).each do |state|
    define_method "#{state}?" do
      self.state == state.humanize.downcase
    end
  end
  
  def watch_until(desired_state, &blk)
    _watch_until(description, :state, [desired_state], ['failed', 'aborted'], &blk)
  end
end