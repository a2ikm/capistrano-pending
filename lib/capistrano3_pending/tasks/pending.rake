namespace :deploy do

  desc <<-DESC
    Displays the `diff' since your last deploy. This is useful if you want \
    to examine what changes are about to be deployed. Note that this might \
    not be supported on all SCM's.
  DESC
  task :pending => "deploy:pending:log"

  namespace :pending do
    def git(*args)
      args.unshift(:git)
      local_exec(*args)
    end

    def local_exec(*args)
      ::Kernel.exec *args.map(&:to_s)
    end

    task :log => :setup do
      git :log, "#{fetch(:revision)}..#{fetch(:branch)}"
    end

    desc <<-DESC
      Displays the `diff' since your last deploy. This is useful if you want \
      to examine what changes are about to be deployed. Note that this might \
      not be supported on all SCM's.
    DESC
    task :diff => :setup do
      git :diff, "#{fetch(:revision)}..#{fetch(:branch)}"
    end

    task :setup => [:capture_revision]

    task :capture_revision do
      on roles fetch(:capistrano3_pending_role, :db) do |host|
        within current_path do
          set :revision, capture(:cat, "REVISION")
        end
      end
    end
  end
end
