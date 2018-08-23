class AnimalScraper
  def self.wikipedia(url)
    # we filled in the animal's data
    doc = Nokogiri::HTML(open(url))
    animal = {}
    #binding.pry
    animal[:name] = doc.search("h1#firstHeading").text
    animal[:kingdom] = doc.search("td")[4].text.gsub(/\n/,'')
    animal[:phylum] = doc.search("td")[6].text.gsub(/\n/,'')
    animal[:klass] = doc.search("td")[8].text.gsub(/\n/,'')
    animal[:order] = doc.search("td")[10].text.gsub(/\n/,'')
    animal[:family] = doc.search("td")[12].text.gsub(/\n/,'')
    animal[:genus] = doc.search("td")[14].text.gsub(/\n/,'')
    animal[:species] = doc.search("td")[16].text.gsub(/\n/,'')

    animal
  end
end
