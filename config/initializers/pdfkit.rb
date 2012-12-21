# config/initializers/pdfkit.rb
PDFKit.configure do |config|
    config.wkhtmltopdf = 'C:/Sites/Skimmatic2/app/assets/wkhtmltopdf/wkhtmltopdf.exe'
   # config.default_options = {
   #   :page_size => 'Legal',
   #   :print_media_type => true
   # }
   # config.root_url = "http://localhost:3000/home" # Use only if your external hostname is unavailable on the server.
end