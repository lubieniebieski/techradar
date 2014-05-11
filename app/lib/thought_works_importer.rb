class ThoughtWorksImporter
  def self.run(*args)
    new(*args).run
  end

  def run
    Radar.delete_all
    Blip.delete_all
    data = File.read('db/thoughtworks.json')
    radars = JSON.parse(data)
    radars.each do |radar|
      parse_radar(radar)
    end
  end

  private

  def parse_radar(radar_json)
    owner = User.first # FIXME
    name = "ThoughtWorks " + radar_json.fetch('date')
    radar = Radar.create!(name: name, owner: owner)
    radar_json.fetch('blips').each do |blip|
      parse_blip(blip, radar)
    end
  end

  def parse_blip(blip, radar)
    name = blip.fetch('name')
    ring = blip.fetch('ring').underscore
    quadrant = blip.fetch('quadrant').underscore
    notes = blip.fetch('description')
    blip = radar.blips.create(name: name, ring: ring, quadrant: quadrant, notes: notes)
    blip.save || binding.pry
  end
end