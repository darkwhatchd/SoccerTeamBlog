# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'Daniel Admin', kind: 'admin', email: 'admin@teste.com', password: 123456)
User.create(name: 'Alícia Writter', kind: 'writter', email: 'writter@teste.com', password: 123456)
Notice.create(title: 'Início da página', description: 'Aqui foi onde tudo começou', body: '<div><p>Página de teste</p</div', user_id: User.first.id)
Notice.create(title: 'Segunda noticia da página', description: 'Aqui foi onde tudo começou', body: '<div><p>Página de teste</p</div', user_id: User.last.id)
Notice.create(title: 'Terceira noticia da página', description: 'Aqui foi onde tudo começou', body: '<div><p>Página de teste</p</div', user_id: User.first.id)