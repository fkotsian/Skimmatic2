class AddDetailsToArticles < ActiveRecord::Migration
  def change
   require 'nokogiri'
    f = File.open("C:/Sites/Skimmatic2/app/assets/pdfs/Paying Atten Distracting.html")	# AMAZING SHIT: Can make this a variable: the URL of their outputted Converted PDFtoHTML file hosted on the internets: a textfield where they can input it
    doc = Nokogiri::HTML(f)
    f.close
  
  css = doc.xpath('//style')
  
  title = doc.xpath('/html/body/div/h1')
  
  paras = doc.xpath('//p')
  authors = paras.first
  abstract = paras[1]
  
  sents = paras.map do |p|
    sent = p.content.match(/(^[^\.]*[\.]*)/)
  end
  
    add_column :articles, :css, :string, :default => css
	add_column :articles, :title, :string, :default => title
    add_column :articles, :authors, :string, :default => authors
    add_column :articles, :abstract, :string, :default => abstract
    add_column :articles, :sents, :string, :default => sents
  end
end
