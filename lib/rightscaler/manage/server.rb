class Rightscaler::Manage::Server < Rightscaler::Resource
  
  def start
    post(:start) unless state == "operational"
  end
  
  def start_and_wait(scripts=[])
    watch_until("operational") { start }
  end
  
  def stop
    post(:stop) unless state == "stopped"
  end
  
  def stop_and_wait
    watch_until("stopped") { stop }
  end
  
  def reboot
    post(:reboot)
  end
  
  def reboot_and_wait
    watch_until('operational') { reboot }
  end
  
  def run_script(right_script_id)
    with_status do
      post(:run_script, :right_script => right_script_id)
    end
  end
  
  def run_script_and_wait(right_script_id)
    status = run_script(right_script_id)
    status.watch_until('completed')
  end
  
  private
  
  def watch_until(desired_state, &blk)
    _watch_until(nickname, :state, [desired_state], ['stranded'], &blk)
  end
end