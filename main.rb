require 'grover'

html_contract = File.read(ARGV[0])
converter = Grover.new(html_contract, format: 'A4')
pdf_contract = converter.to_pdf

File.write('grover-result.pdf', pdf_contract)
