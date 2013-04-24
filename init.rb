require 'redmine'

require_dependency 'add_watcher_hook'

Redmine::Plugin.register :redmine_assign_and_watch do
  name 'Redmine Assign and Watch'
  author 'Eric Brüggemann'
  author_url 'http://www.aradiv.de'
  description 'This Plugin automaticly add the user the ticket is assigned to as watcher.'
  url 'https://github.com/Aradiv/redmine_assign_and_watch.git'
  version '1.0'
  requires_redmine :version_or_higher => '2.1.0'
end
