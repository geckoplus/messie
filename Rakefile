require 'rubygems'
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'messie'

task :default => 'test:run'
task 'gem:release' => 'test:run'

namespace :test do
  namespace :server do
    desc "start test servers for Messie"
    task :start do
      system '(ruby test/server/server.rb --port 4567 &);'
      system '(ruby test/server/server.rb --use-ssl --port 4568 &);'
    end

    desc "stop test servers for Messie"
    task :stop do
      system "ps ax | grep test/server/server.rb | grep -v grep | awk '{print $1}' | xargs kill -9"
    end

    desc "restart test servers"
    task :restart => [:stop, :start]
  end
end

gem_name = "messie-#{Messie::VERSION}.gem"

namespace :gem do
    task :build do
      system "gem build messie.gemspec"
    end

    task :install => :build do
      system "gem install #{gem_name}"
    end

    task :release => :build do
      system "gem push #{gem_name}"
    end
end

