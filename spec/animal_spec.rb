describe Animal do
  context '.new_from_wikipedia'do
    it 'it instantiates an animal based on a wikipedi URL' do
      hippo = Animal.new_from_wikipedia('https://en.wikipedia.org/wiki/Hippopotamus')

      expect(hippo).to be_an_instance_of(Animal)
      expect(hippo.name).to eq("Hippopotamus")
      expect(hippo.kingdom).to eq("Animalia")
      expect(hippo.phylum).to eq("Chordata")
      expect(hippo.klass).to eq("Mammalia")
      expect(hippo.order).to eq("Artiodactyla")
      expect(hippo.family).to eq("Hippopotamidae")
      expect(hippo.genus).to eq("Hippopotamus")
      #expect(hippo.species).to eq("H. amphibius")
    end
  end

  context 'properties' do
    it 'has a name' do
      animal = Animal.new
      animal.name = "Name"
      expect(animal.name).to eq("Name")
    end
    it 'has a kingdom' do
      animal = Animal.new
      animal.kingdom = "Kingdom"
      expect(animal.kingdom).to eq("Kingdom")
    end
    it 'has a phylum' do
      animal = Animal.new
      animal.phylum = "Phylum"
      expect(animal.phylum).to eq("Phylum")
    end
    it 'has a klass' do
      animal = Animal.new
      animal.klass = "Klass"
      expect(animal.klass).to eq("Klass")
    end
    it 'has a order' do
      animal = Animal.new
      animal.order = "Order"
      expect(animal.order).to eq("Order")
    end
    it 'has a family' do
      animal = Animal.new
      animal.family = "Family"
      expect(animal.family).to eq("Family")
    end
    it 'has a genus' do
      animal = Animal.new
      animal.genus = "Genus"
      expect(animal.genus).to eq("Genus")
    end
    it 'has a species' do
      animal = Animal.new
      animal.species = "Species"
      expect(animal.species).to eq("Species")
    end
  end
end
