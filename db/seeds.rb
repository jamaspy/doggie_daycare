Dog.destroy_all

Dog.create(:name =>"Cooper", :breed=>"Toy Poodle", :color => "Black", :sex => "male", :image => "https://cdn.shopify.com/s/files/1/2123/8425/products/39977228-LRG_530x.jpg?v=1516090975", :vac_1 => "2019-03-19", :vac_2 => "2019-03-19", :flea => "2019-02-12", :worm => "2019-02-12", :owner_id => "", :service_id => "", :vac_id => "")

Dog.create(:name =>"Peggy", :breed=>"Cavoodle", :color => "Tan", :sex => "female", :image => "https://bowwowinsurance.com.au/wp-content/uploads/2018/10/cavoodle-700x700.jpg", :vac_1 => "2019-03-12", :vac_2 => "2019-02-12", :flea => "2019-03-12", :worm => "2019-03-12", :owner_id => "", :service_id => "", :vac_id => "")
Dog.create(:name =>"Busta", :breed=>"King Charles Spaniel", :color => "Tan & White", :sex => "Female", :image => "https://bowwowinsurance.com.au/wp-content/uploads/2018/10/cavalier-king-charles-spaniel-700x700.jpg", :vac_1 => "2019-01-12", :vac_2 => "2019-01-12", :flea => "2019-01-22", :worm => "2019-02-12", :owner_id => "", :service_id => "", :vac_id => "")

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
Vaccination.create(:name => "Kennel Cough", :price => "75", :dog_id => "")
Vaccination.create(:name => "Heart Worm", :price => "35", :dog_id => "")
Vaccination.create(:name => "Lung Worm", :price => "45", :dog_id => "")
Vaccination.create(:name => "Flea", :price => "33", :dog_id => "")
Vaccination.create(:name => "Flea & Tic", :price => "71", :dog_id => "")
Vaccination.create(:name => "Worm", :price => "33", :dog_id => "")
Vaccination.create(:name => "Annual Boosters", :price => "125", :dog_id => "")

User.destroy_all
User.create(:name => "James",:email => "james@james.com", :password_digest => "chicken", :admin => "true")
User.create(:name => "Kylie",:email => "kylie@kylie.com", :password_digest => "chicken", :admin => "true")
User.create(:name => "Frankie",:email => "frankie@frankie.com", :password_digest => "chicken", :admin => "false")