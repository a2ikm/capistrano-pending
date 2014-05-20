require "capistrano/pending/scm/base"

module Capistrano
  module Pending
    module SCM
      class Git < Base
        command :git

        def log(from, to)
          git :log, "#{from}..#{to}"
        end

        def diff(from, to)
          git :diff, "#{from}..#{to}"
        end
      end
    end
  end
end
