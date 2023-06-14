return {
	'mfussenegger/nvim-dap-python',
	init = function ()
		require('dap-python').setup('${env:PATH}')
	end
}