local path = game.ReplicatedStorage.Creatures.Host

for i,v in pairs(path:GetChildren()) do
  if v.Name = "Class1" or "Class2" or "Class3" or "Class4" or "Class5" or "Class6" or "Class7" or "Class8" or "Class9" or "ClassDuck" or "Class0" or "Class01" or "Class999" or "Class5318008" or "Class1337" or "Class1338" then
    local a = require(v)
    a.Power = "inf"
    a.Speed = 30
    a.MaxHealth = "inf"
    a.HealthRegen = "inf"
  end
end
