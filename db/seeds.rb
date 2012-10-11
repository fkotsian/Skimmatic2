# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

 tests = Test.create([{pre: 'http://www.readingmatrix.com/articles/bell/article.pdf', post: 'http://cs.swan.ac.uk/~cstomo/publications/IIiX08.pdf', name: 'blur'}, 
					   pre: 'http://opus.bath.ac.uk/24646/1/Duggan_%26_Payne,_11.pdf', post: 'https://mywebspace.wisc.edu/dsshapiro/web/861/liu.pdf', name: 'summary'}] #,
#						pre: 'URL5', post: 'URL6', name: 'block'} ]

# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
