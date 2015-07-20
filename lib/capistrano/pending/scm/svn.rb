require "capistrano/pending/scm/base"

module Capistrano
  module Pending
    module SCM
      class Svn < Base
        command :svn

        def log(from, to)
          to = 'HEAD' if to == 'master'
          svn :log, "-r #{from}:#{to}"
        end

        def diff(from, to)
          to = 'HEAD' if to == 'master'
          svn :diff, "-r #{from}:#{to}"
        end
      end
    end
  end
end
