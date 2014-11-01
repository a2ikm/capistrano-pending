module Capistrano
  module Pending
    require "capistrano/pending/version"

    module SCM
      autoload :Git, "capistrano/pending/scm/git"
      autoload :Custom, "capistrano/pending/scm/custom"

      class <<self
        def load(name, *args)
          const_get(name.to_s.capitalize).new(*args)
        rescue NameError
          abort "#{name} is not supported."
        end
      end
    end
  end
end

load "capistrano/pending/tasks/pending.rake"
