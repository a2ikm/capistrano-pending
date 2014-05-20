module Capistrano
  module Pending
    module SCM
      class Base
        class <<self
          def command(name)
            class_eval <<-RUBY_CODE, __FILE__, __LINE__+1
              def #{name}(*args)                          # def git(*args)
                local_exec(:#{name}, *args)               #   local_exec(:git, *args)
              end                                         # end
            RUBY_CODE
          end
        end

        def local_exec(*args)
          ::Kernel.exec *args.map(&:to_s)
        end

        def log(from, to)
          raise NotImplementedError
        end

        def diff(from, to)
          raise NotImplementedError
        end
      end
    end
  end
end
