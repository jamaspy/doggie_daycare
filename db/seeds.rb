Dog.destroy_all

Dog.create(:name => "Cooper", :breed => "Toy Poodle", :color => "Black", :sex => "male", :image => "https://cdn.shopify.com/s/files/1/2123/8425/products/39977228-LRG_530x.jpg?v=1516090975", :flea => "2019-02-12", :worm => "2019-02-12", :owner_id => "", :vet_id => "")

Dog.create(:name => "Peggy", :breed => "Cavoodle", :color => "Tan", :sex => "female", :image => "https://bowwowinsurance.com.au/wp-content/uploads/2018/10/cavoodle-700x700.jpg", :flea => "2019-03-12", :worm => "2019-03-12", :owner_id => "", :vet_id => "")

Dog.create(:name => "Busta", :breed => "King Charles Spaniel", :color => "Tan & White", :sex => "Female", :image => "https://bowwowinsurance.com.au/wp-content/uploads/2018/10/cavalier-king-charles-spaniel-700x700.jpg", :flea => "2019-01-22", :worm => "2019-02-12", :owner_id => "", :vet_id => "")

Dog.create(:name => "Oscar", :breed => "Shih Tzu", :color => "White", :sex => "Male", :image => "https://bowwowinsurance.com.au/wp-content/uploads/2018/10/maltese-shih-tzu-700x700.jpg", :flea => "2019-01-22", :worm => "2019-02-12", :owner_id => "", :vet_id => "")

Dog.create(:name => "Ralph", :breed => "Shih Tzu", :color => "White & Tan", :sex => "Male", :image => "https://cdn.omlet.co.uk/images/cache/908/768/Dog-Shih_Tzu-A_beautiful_little_Shih_Tzu_standing_tall,_showing_off_its_big_bushy_tail.jpg", :flea => "2019-01-22", :worm => "2019-02-12", :owner_id => "", :vet_id => "")

Dog.create(:name => "Jagga", :breed => "Chihuahua", :color => "Tan & White", :sex => "Female", :image => "https://www.petbarn.com.au/petspot/app/uploads/2015/01/30.-Chihuahua.jpg", :flea => "2019-01-22", :worm => "2019-02-12", :owner_id => "", :vet_id => "")

Owner.destroy_all
Owner.create(:name => "James Aspinall", :email => "james@james.com", :mobile => "0423567498", :address => "9/9 Albion Street, Waverley, NSW, 2024")
Owner.create(:name => "Kylie Clark", :email => "kylie@kylie.com", :mobile => "0445674890", :address => "22 John Street, Bronte, NSW, 2024")
Owner.create(:name => "John Croke", :email => "johns@john.com", :mobile => "0423334455", :address => "22 Fronk Street,Bondi, NSW, 2224")

Service.destroy_all
Service.create(:name => "Daycare", :price => "55", :dog_id => "")
Service.create(:name => "Collection & Drop-Off", :price => "10", :dog_id => "")
Service.create(:name => "Tidy-Up", :price => "30", :dog_id => "")
Service.create(:name => "Daycare & Haircut", :price => "155", :dog_id => "")
Service.create(:name => "Haircut", :price => "155", :dog_id => "")

Vet.destroy_all
Vet.create(:name => "VetMed", :phone => "02345345345", :address => "4 Bronte Road, Randwick", :dog_id => "", :vac_id => "")
Vet.create(:name => "Bronte Family Vets", :phone => "0223412234", :address => "334 Bronte Road, Randwick", :dog_id => "", :vac_id => "")
Vet.create(:name => "Clovelly Vetenary Services", :phone => "02998876655", :address => "5 Beach Road, Clovelley", :dog_id => "", :vac_id => "")

Vaccination.destroy_all
Vaccination.create(:name => "Kennel Cough", :price => "75")
Vaccination.create(:name => "Heart Worm", :price => "35")
Vaccination.create(:name => "Lung Worm", :price => "45")
Vaccination.create(:name => "Flea", :price => "33")
Vaccination.create(:name => "Flea & Tic", :price => "71")
Vaccination.create(:name => "Worm", :price => "33")
Vaccination.create(:name => "Annual Boosters", :price => "125")

User.destroy_all
User.create(:name => "James", :email => "james@james.com", :password => "chicken", :admin => "true")
User.create(:name => "Kylie", :email => "kylie@kylie.com", :password => "chicken", :admin => "true")
User.create(:name => "Frankie", :email => "frankie@frankie.com", :password => "chicken", :admin => "false")
