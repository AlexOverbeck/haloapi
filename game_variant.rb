class GameVariant
  attr_accessor :name, :description, :gameBaseVariantId, :iconUrl, :id, :contentId

  VARIANTS = [
    {
      name: "SWAT",
      description: "Aim for the Head!",
      gameBaseVariantId: "257a305e-4dd3-41f1-9824-dfe7e8bd59e1",
      iconUrl: "https://content.halocdn.com/media/Default/games/halo-5-guardians/game-type-icons/slayer-b92fd67142834e4d825322f2404d7753.png",
      id: "bd8bc60a-c7f7-4788-ab6d-081d674d4fb6",
      contentId: "bd8bc60a-c7f7-4788-ab6d-081d674d4fb6"
    },
    {
      name: "SWATnums",
      description: "Aim for the Head!",
      gameBaseVariantId: "257a305e-4dd3-41f1-9824-dfe7e8bd59e1",
      iconUrl: "https://content.halocdn.com/media/Default/games/halo-5-guardians/game-type-icons/slayer-b92fd67142834e4d825322f2404d7753.png",
      id: "efe4fc18-959b-4f32-b810-89e6818a9830",
      contentId: "efe4fc18-959b-4f32-b810-89e6818a9830"
    },
    {
      name: "Strongholds",
      description: "Capture Two Strongholds to Score Points.",
      gameBaseVariantId: "1571fdac-e0b4-4ebc-a73a-6e13001b71d3",
      iconUrl: "https://content.halocdn.com/media/Default/games/halo-5-guardians/game-type-icons/stronghold-8a7cbb21223e4c0fac736492d04eff91.png",
      id: "935472ff-ba68-4d08-b385-b8479dd71e35",
      contentId: "935472ff-ba68-4d08-b385-b8479dd71e35"
    },
    {
      name: "Breakout Arena",
      description: "Win Rounds by Eliminating the Enemy Team or Taking the Flag to the Enemy Base.",
      gameBaseVariantId: "1e473914-46e4-408d-af26-178fb115de76",
      iconUrl: "https://content.halocdn.com/media/Default/games/halo-5-guardians/game-type-icons/breakout-bc0a4c0126de468e95c757466d8d3aaf.png",
      id: "39d5ccbf-c3ca-4fd3-87fb-e0669e06b517",
      contentId: "39d5ccbf-c3ca-4fd3-87fb-e0669e06b517"
    },
    {
      name: "Warzone Assault",
      description: "Attackers: Capture Bases and Destroy the Core.\nDefenders: Hold Off Attackers.",
      gameBaseVariantId: "42f97cca-2cb4-497a-a0fd-ceef1ba46bcc",
      iconUrl: "https://content.halocdn.com/media/Default/games/halo-5-guardians/game-type-icons/warzone-923f801e29374c6296e46515713da3c3.png",
      id: "9995d70e-1aad-413a-999c-c2d0522374d0",
      contentId: "9995d70e-1aad-413a-999c-c2d0522374d0"
    },
    {
      name: "Big Team CTF",
      description: "Capture the Enemy Flag While Defending Your Own.",
      gameBaseVariantId: "8d4a3dbc-ef7a-405e-862b-34093ff582fd",
      iconUrl: "https://content.halocdn.com/media/Default/games/halo-5-guardians/game-type-icons/capture-the-flag-8c8c85e71b734ecbbd95b14a5d802458.png",
      id: "2eab99ec-c8ce-4709-8e1f-40d6dbfdfcef",
      contentId: "2eab99ec-c8ce-4709-8e1f-40d6dbfdfcef"
    }
  ]

  def initialize(attrs = {})
		attrs.each do |k, v|
			self.send "#{k}=", v
		end
	end

	def self.all
		VARIANTS.collect do |method|
			new method
		end
	end

	def self.find_by_name(name)
		all.select {|variant| variant.name == name}.first
	end

  def self.find(id)
		all.select {|variant| variant.id == id}.first
	end
end
