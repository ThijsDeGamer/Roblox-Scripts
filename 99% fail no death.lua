local Children = game.workspace.Map.Game.Tiles.Left:GetChildren()

for i = 1, #Children do
   Children[i].TouchInterest:Destroy()
end

local Children = game.workspace.Map.Game.Tiles.Right:GetChildren()

for a = 1, #Children do
   Children[a].TouchInterest:Destroy()
end
