module Capistrano
  module Pending
    require "capistrano/pending/version"

    module SCM
      autoload :Git, "capistrano/pending/scm/git"
      autoload :Svn, "capistrano/pending/scm/svn"

      class <<self
        def load(name)
          const_get(name.to_s.capitalize).new
        rescue NameError
          abort "#{name} is not supported."
        end
      end
    end
  end
end

load "capistrano/pending/tasks/pending.rake"
