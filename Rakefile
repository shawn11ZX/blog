require 'rake-jekyll'

# This task builds the Jekyll site and deploys it to a remote Git repository.
# It's preconfigured to be used with GitHub and Travis CI.
# See http://github.com/jirutka/rake-jekyll for more options.
Rake::Jekyll::GitDeployTask.new(:deploy) do |t|

  t.remote_url = -> {
    url = 'https://github.com/shawn11ZX/shawn11zx.github.io.git'
    next url.gsub(%r{^https://}, "https://#{ENV['GH_TOKEN']}@") if ENV.key? 'GH_TOKEN'
    next url
  }
  
  t.ssh_key_file = '.deploy_key'
end