import libgreenminer

class Test(libgreenminer.AndroidTest):
    def before(self, run):
        self.timeout = run.phone.shell('settings get system screen_off_timeout').strip()
        run.phone.shell('settings put system screen_off_timeout 1800000').strip()
				#turn off airplane mode

    def after(self, run):
        # Reset Screen Timeout
        run.phone.shell('settings put system screen_off_timeout ' + self.timeout)
				run.phone.shell('pm uninstall com.android.chrome/com.google.android.apps.chrome.Main')
				#turn on airplane mode again