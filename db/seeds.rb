# Creacion de categorias
c1 = Category.create(name: 'Categoria 1')
c2 = Category.create(name: 'Categoria 2')
c3 = Category.create(name: 'Categoria 3')

# Creacion de tags
t1 = Tag.create(name: 'Tag 1')
t2 = Tag.create(name: 'Tag 2')
t3 = Tag.create(name: 'Tag 3')

# Creacion de Products
Product.create(category: c1, title: 'Product 1', description: 'qwert asdfgh', prod_id: 0, price: 5, cost: 3, active: true)
Product.create(category: c2, title: 'Product 4', description: 'qwert asdfgh', prod_id: 4, price: 35, cost: 43, active: false)
Product.create(category: c2, title: 'Product 5', description: 'qwert asdfgh', prod_id: 0, price: 45, cost: 43, active: true)
Product.create(category: c3, title: 'Product 9', description: 'qwert asdfgh', prod_id: 21, price: 5, cost: 3, active: true)
Product.create(category: c3, title: 'Product 10', description: 'qwert asdfgh', prod_id: 0, price: 5, cost: 3, active: true)