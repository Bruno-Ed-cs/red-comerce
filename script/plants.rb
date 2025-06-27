# In Rails console or seeds.rb
plants = [
  {
    name: "Mangueira",
    description: "Árvore frutífera tropical",
    classification: "Angiosperma",
    environment: "Mata Atlântica",
    created_at: Time.current,
    updated_at: Time.current
  },
  {
    name: "Ipê-amarelo",
    description: "Árvore símbolo do Brasil",
    classification: "Angiosperma",
    environment: "Cerrado",
    created_at: 1.day.ago,
    updated_at: 1.day.ago
  },
  {
    name: "Pau-brasil",
    description: "Árvore histórica brasileira",
    classification: "Angiosperma",
    environment: "Mata Atlântica",
    created_at: 2.days.ago,
    updated_at: 2.days.ago
  },
  {
    name: "Cajueiro",
    description: "Árvore de clima tropical",
    classification: "Angiosperma",
    environment: "Caatinga",
    created_at: 3.days.ago,
    updated_at: 3.days.ago
  },
  {
    name: "Araucária",
    description: "Conífera típica do sul do Brasil",
    classification: "Gimnosperma",
    environment: "Mata de Araucárias",
    created_at: 4.days.ago,
    updated_at: 4.days.ago
  },
  {
    name: "Buriti",
    description: "Palmeira típica de áreas alagadas",
    classification: "Angiosperma",
    environment: "Pantanal",
    created_at: 5.days.ago,
    updated_at: 5.days.ago
  },
  {
    name: "Jatobá",
    description: "Árvore de grande porte da Amazônia",
    classification: "Angiosperma",
    environment: "Amazônia",
    created_at: 6.days.ago,
    updated_at: 6.days.ago
  },
  {
    name: "Pitangueira",
    description: "Árvore frutífera nativa",
    classification: "Angiosperma",
    environment: "Restinga",
    created_at: 1.week.ago,
    updated_at: 1.week.ago
  },
  {
    name: "Seringueira",
    description: "Árvore produtora de látex",
    classification: "Angiosperma",
    environment: "Amazônia",
    created_at: 2.weeks.ago,
    updated_at: 2.weeks.ago
  },
  {
    name: "Aroeira",
    description: "Árvore medicinal do sertão",
    classification: "Angiosperma",
    environment: "Caatinga",
    created_at: 3.weeks.ago,
    updated_at: 3.weeks.ago
  }
]

plants.each { |plant| Product.create!(plant) }
