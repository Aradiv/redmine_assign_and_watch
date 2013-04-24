class AddWatcherHook < Redmine::Hook::ViewListener
	def controller_issues_edit_before_save(context = { })
		addWatcher(context)
	end
	
	def controller_issues_new_before_save(context = { })
		addWatcher(context)
	end
	
	def addWatcher(context = { })
		@issue = context[:issue]
		unless @issue.assigned_to == nil || @issue.watched_by?(@issue.assigned_to) || @issue.author == @issue.assigned_to
			@issue.add_watcher(@issue.assigned_to)
		end
	end
end