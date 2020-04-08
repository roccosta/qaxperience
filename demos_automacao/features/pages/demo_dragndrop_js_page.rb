# frozen_string_literal: true

# :nodoc:
class DemoDragnDrop < SitePrism::Page
	include RSpec::Matchers
	set_url  'http://the-internet.herokuapp.com/drag_and_drop'
	element  :bloco_a, "#column-a"
	element  :bloco_b, "#column-b"

	def move_blocks
		page.driver.browser.execute_script("
		var dm = document.createElement('script');
		dm.src='https://andywer.github.io/drag-mock/drag-mock.min.js';
		document.head.appendChild(dm);")
		#sleep para dar tempo de injetar o script no header da pagina
		sleep 3
		page.driver.browser.execute_script("
		var dragSource = document.querySelector('#column-a');
		var dropTarget = document.querySelector('#column-b');
		window.dragMock.dragStart(dragSource).delay(100).dragOver(dropTarget).delay(100).drop(dropTarget);")
	end

	def check_column_position
		#sleep para observar a efetividade do drag and drop
		sleep 5
		expect(bloco_a.text == 'B').to be true
		expect(bloco_b.text == 'A').to be true
	end
end
