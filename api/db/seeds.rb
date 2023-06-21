FoodCollect.destroy_all
Organization.destroy_all

test_org = Organization.create(name: "Croix Rouge", site_url: "https://www.croix-rouge.fr/", logo_url: "https://upload.wikimedia.org/wikipedia/commons/8/8e/Croix-rouge_fran%C3%A7aise.gif" )

test_collect = FoodCollect.create(name: "Collecte d'Hiver 2023", date: Date.today, organization: test_org)
