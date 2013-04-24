require 'redmine'

require_dependency 'add_watcher_hook'

Redmine::Plugin.register :redmine_assign_and_watch do
  name 'Redmine Assign and Watch'
  author 'Eric Brüggemann'
  description 'This Plugin automaticly add User the ticket is assigned to as watcher.'
  version '0.0.1'
end