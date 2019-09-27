require 'time'
require 'daemons'

# This class is supposed to be run as a daemon
class Overseer

  def initialize
    @options = {
      :app_name  => "servant",
      :multiple  => false,
      :backtrace => true,
      :monitor   => true,
      :ontop     => true
    }
  end

  # Background process that checks periodically which vagrants are depleting its time
  def start_infinite_manage
    @daemon = Daemons.call(@options) do
      loop do
        get_current_time
        deadline_warning
        deadline_destroy
        sleep(5.minute)
      end
    end
  end

  def stop_infinite_manage
    @daemon.stop
  end

  def get_current_time
  end

  def deadline_warning
  end

  def deadline_destroy
  end

end

a = Overseer.new
a.infinite_manage

puts "me"


