class GameBaseVariant
  attr_accessor :name, :internalName, :iconUrl, :supportedGameModes, :id, :contentId

  VARIANTS = [
    {
      name: "Strongholds",
      internalName: "Strongholds",
      iconUrl: "https://content.halocdn.com/media/Default/games/halo-5-guardians/game-type-icons/stronghold-8a7cbb21223e4c0fac736492d04eff91.png",
      supportedGameModes: [
        "Arena",
        "Custom"
      ],
      id: "1571fdac-e0b4-4ebc-a73a-6e13001b71d3",
      contentId: "1571fdac-e0b4-4ebc-a73a-6e13001b71d3"
    },
    {
      name: "Slayer",
      internalName: "Slayer",
      iconUrl: "https://content.halocdn.com/media/Default/games/halo-5-guardians/game-type-icons/slayer-b92fd67142834e4d825322f2404d7753.png",
      supportedGameModes: [
        "Arena",
        "Custom"
      ],
      id: "257a305e-4dd3-41f1-9824-dfe7e8bd59e1",
      contentId: "257a305e-4dd3-41f1-9824-dfe7e8bd59e1"
    },
    {
      name: "Breakout",
      internalName: "Breakout",
      iconUrl: "https://content.halocdn.com/media/Default/games/halo-5-guardians/game-type-icons/breakout-bc0a4c0126de468e95c757466d8d3aaf.png",
      supportedGameModes: [
        "Arena",
        "Custom"
      ],
      id: "1e473914-46e4-408d-af26-178fb115de76",
      contentId: "1e473914-46e4-408d-af26-178fb115de76"
    },
    {
      name: "Capture the Flag",
      internalName: "CaptureTheFlag",
      iconUrl: "https://content.halocdn.com/media/Default/games/halo-5-guardians/game-type-icons/capture-the-flag-8c8c85e71b734ecbbd95b14a5d802458.png",
      supportedGameModes: [
        "Arena",
        "Custom"
      ],
      id: "a2949322-dc84-45ab-8454-cf94fb28c189",
      contentId: "a2949322-dc84-45ab-8454-cf94fb28c189"
    },
    {
      name: "Warzone Assault",
      internalName: "WarzoneOneBase",
      iconUrl: "https://content.halocdn.com/media/Default/games/halo-5-guardians/game-type-icons/warzone-923f801e29374c6296e46515713da3c3.png",
      supportedGameModes: [
        "Warzone"
      ],
      id: "42f97cca-2cb4-497a-a0fd-ceef1ba46bcc",
      contentId: "42f97cca-2cb4-497a-a0fd-ceef1ba46bcc"
    },
    {
      name: "Warzone",
      internalName: "WarzoneTwoBase",
      iconUrl: "https://content.halocdn.com/media/Default/games/halo-5-guardians/game-type-icons/warzone-923f801e29374c6296e46515713da3c3.png",
      supportedGameModes: [
        "Warzone"
      ],
      id: "f6de5351-3797-41e9-8053-7fb111a3a1a0",
      contentId: "f6de5351-3797-41e9-8053-7fb111a3a1a0"
    },
    {
      name: "Campaign",
      internalName: "Campaign",
      iconUrl: nil,
      supportedGameModes: [
        "Campaign"
      ],
      id: "00000003-0000-0010-8000-00aa00389b71",
      contentId: "00000003-0000-0010-8000-00aa00389b71"
    },
    {
      name: "Big Team CTF",
      internalName: "BigTeamBattleCaptureTheFlag",
      iconUrl: "https://content.halocdn.com/media/Default/games/halo-5-guardians/game-type-icons/capture-the-flag-8c8c85e71b734ecbbd95b14a5d802458.png",
      supportedGameModes: [
        "Arena",
        "Custom"
      ],
      id: "8d4a3dbc-ef7a-405e-862b-34093ff582fd",
      contentId: "8d4a3dbc-ef7a-405e-862b-34093ff582fd"
    },
    {
      name: "Big Team Strongholds",
      internalName: "BitTeamBattleStrongholds",
      iconUrl: "https://content.halocdn.com/media/Default/games/halo-5-guardians/game-type-icons/stronghold-8a7cbb21223e4c0fac736492d04eff91.png",
      supportedGameModes: [
        "Arena",
        "Custom"
      ],
      id: "b45854a7-e6e1-4a9c-9104-139934511779",
      contentId: "b45854a7-e6e1-4a9c-9104-139934511779"
    },
    {
      name: "Big Team Slayer",
      internalName: "BigTeamBattleSlayer",
      iconUrl: "https://content.halocdn.com/media/Default/games/halo-5-guardians/game-type-icons/slayer-b92fd67142834e4d825322f2404d7753.png",
      supportedGameModes: [
        "Arena",
        "Custom"
      ],
      id: "65f033d2-1303-4748-bc26-ef62c38eced4",
      contentId: "65f033d2-1303-4748-bc26-ef62c38eced4"
    },
    {
      name: nil,
      internalName: "Forge",
      iconUrl: nil,
      supportedGameModes: [
        "Custom"
      ],
      id: "a2b0a49f-a1ca-cdc2-c0bf-8fa1cacdc2c0",
      contentId: "a2b0a49f-a1ca-cdc2-c0bf-8fa1cacdc2c0"
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
    ll.select {|variant| variant.name == name}.first
  end

  def self.find(id)
    all.select {|variant| variant.id == id}.first
  end
end
