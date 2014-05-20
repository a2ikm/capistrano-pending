module Capistrano
  module Pending
    require "capistrano/pending/version"

    module SCM
      autoload :Git, "capistrano/pending/scm/git"

      class <<self
        def load(name)
          const_get(name.to_s.capitalize).new
        end
      end
    end
  end
end

load "capistrano/pending/tasks/pending.rake"
