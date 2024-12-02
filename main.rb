require 'grover'

html_contract = File.read(ARGV[0])
converter = Grover.new(
  html_contract,
  format: 'A4',
  margin: {
    top: '2cm',
    bottom: '2cm',
    left: '1cm',
    right: '1cm'
  },
  style_tag_options: [
    { url: 'https://rsms.me/inter/inter.css' },
    { path: 'inter-integration.css' }
  ]
)
pdf_contract = converter.to_pdf

File.write('grover-result.pdf', pdf_contract)
