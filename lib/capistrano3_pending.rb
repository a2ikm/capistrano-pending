module Capistrano3Pending
  require "capistrano3_pending/version"

  module SCM
    autoload :Git, "capistrano3_pending/scm/git"

    class <<self
      def load(name)
        const_get(name.to_s.capitalize).new
      end
    end
  end
end

load "capistrano3_pending/tasks/pending.rake"
