require "capistrano/pending/scm/base"

module Capistrano
  module Pending
    module SCM
      class Svn < Base
        command :svn

        def log(from, to)
          svn :log, "-r #{from}:#{to}"
        end

        def diff(from, to)
          svn :diff, "-r #{from}:#{to}"
        end
      end
    end
  end
end
