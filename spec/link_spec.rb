require 'database_cleaner'

describe Link do
  context "used as an example of how datamapper works" do

    it "should be created and then retrieved from the database" do
      expect(Link.count).to eq(0)

      Link.create(title: 'Makers Academy',
                  url: 'http://www.makersacademy.com/')

      expect(Link.count).to eq(1)

     # Link.update(title: 'Hey Academy',
     #              url: 'http://www.makersacademy.co.uk')
     #this did work

      link = Link.first
      expect(link.url).to eq('http://www.makersacademy.com/')
      expect(link.title).to eq('Makers Academy')

      Link.destroy

      expect(Link.count).to eq(0)
    end

  end

end