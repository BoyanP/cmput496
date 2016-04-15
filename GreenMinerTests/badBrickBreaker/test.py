import libgreenminer

class Test(libgreenminer.AndroidTest):
	def before(self, run):
		# Set Screen Timeout
		self.timeout = run.phone.shell('settings get system screen_off_timeout').strip()
		run.phone.shell('settings put system screen_off_timeout 1800000').strip()

	def after(self, run):
		# Reset Screen Timeout
		run.phone.shell('settings put system screen_off_timeout ' + self.timeout)
		run.phone.shell('pm uninstall com.bpeychof.example/.MainActivity')