module TerminalNotifier
  module Guard
    module Notify
      terminal_notifier_path = `which terminal-notifier`
      if File.symlink? terminal_notifier_path
        terminal_notifier_path = File.expand_path(File.readlink(terminal_notifier_path), __FILE__)
      end

      BIN_PATH = terminal_notifier_path.empty? ?
        File.expand_path('../../../../vendor/terminal-notifier-failed.app/Contents/MacOS/terminal-notifier', __FILE__)
        :
        terminal_notifier_path
    end
  end
end
