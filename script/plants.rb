# db/seeds.rb
products = [
  {
    name: "Mangueira",
    description: "Árvore frutífera tropical",
    classification: "Angiosperma",
    environment: "Mata Atlântica",
    price: 129.90,
    inventory: 15,
    discount: 0.1,
    created_at: Time.current,
    updated_at: Time.current
  },
  {
    name: "Ipê-amarelo",
    description: "Árvore símbolo do Brasil",
    classification: "Angiosperma",
    environment: "Cerrado",
    price: 299.90,
    inventory: 8,
    discount: 0.15,
    created_at: 1.day.ago,
    updated_at: 1.day.ago
  },
  {
    name: "Pau-brasil",
    description: "Árvore histórica brasileira",
    classification: "Angiosperma",
    environment: "Mata Atlântica",
    price: 599.90,
    inventory: 3,
    discount: 0.0,
    created_at: 2.days.ago,
    updated_at: 2.days.ago
  },
  # Add 7 more products following the same structure
]

ActiveRecord::Base.transaction do
  products.each do |product_data|
    product = Product.create!(
      name: product_data[:name],
      description: product_data[:description],
      classification: product_data[:classification],
      environment: product_data[:environment],
      price: product_data[:price],
      inventory: product_data[:inventory],
      discount: product_data[:discount],
      created_at: product_data[:created_at],
      updated_at: product_data[:updated_at]
    )
    
  end
end

puts "Created #{Product.count} products with images"
