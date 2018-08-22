class Users::BulkCreate
  URL = "https://randomuser.me/api".freeze

  def initialize(number = 20)
    @number = number
  end

  def execute
    url = "#{URL}?results=#{@number}"
    response = HTTParty.get(url)
    data = JSON.parse(response.body)
    data["results"].each do |person|
      name = person["name"]["first"] + " " + person["name"]["last"]
      p "[GENERATE_USERS] name: #{name}, email: #{person['email']}"
      User.create!(
        name: name.titleize,
        password: person["login"]["password"],
        email: person["email"],
        image_url: person["picture"]["large"]
      )
    end
  end
end
