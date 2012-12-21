class Article < ActiveRecord::Base
  attr_accessible :title, :url#, :html, :pdf
  cattr_reader :css, :title, :authors, :abstract, :sents
#  has_attached_file :html, :styles => { medium: "800x680", thumb: "100x100" }
#  has_attached_file :pdf, :styles => { medium: "800x680", thumb: "100x100" }

  require 'nokogiri'
  f = File.open("app/assets/pdfs/Paying Atten Distracting.html")	# AMAZING SHIT: Can make this a variable: the URL of their outputted Converted PDFtoHTML file hosted on the internets: a textfield where they can input it
  doc = Nokogiri::HTML(f)
  f.close
  
  @@css = doc.xpath('//style').text
  
  @@title = doc.xpath('/html/body/div/h1').text
  
  paras = doc.xpath('//p')
  @@authors = paras.first.text
  @@abstract = paras[1].text
  
  @@sents = paras.map do |p|
    sent = p.text.match(/(^[^\.]*[\.]*)/)[0].to_s
  end
  
  def self.css
	@@css
  end
  
  def self.title
    @@title
  end
  
  def self.authors
    @@authors
  end
  
  def self.abstract
	@@abstract
  end
  
  def self.sents
    @@sents#.to_sentence(words_connector: "\n")
  end
  
end
