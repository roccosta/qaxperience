# frozen_string_literal: true

# :nodoc:
class DemoAlert < SitePrism::Page
	include RSpec::Matchers
	set_url  'http://the-internet.herokuapp.com/javascript_alerts'
	element  :js_confirm_alert_button, "#content > div > ul > li:nth-child(2) > button"

	def click_alert_button
		js_confirm_alert_button.click
	end

	def assert_alert_text(message)
		alert_text = page.driver.browser.switch_to.alert.text
		expect(message == alert_text).to be true
	end

	def dismiss_alert
		#sleep para observar a mensagem do alert antes de dispensar
		sleep 5
		page.driver.browser.switch_to.alert.dismiss	
	end

end
