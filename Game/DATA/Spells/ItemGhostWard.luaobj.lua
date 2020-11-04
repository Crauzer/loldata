NotSingleTargetSpell = true
DoesntTriggerSpellCasts = true
BuffTextureName = "2049_Sightstone.dds"
BuffName = "ItemGhostWard"
AutoBuffActivateEffect = "Ward_Sight_Idle.troy"
MinimapIconTextureName = "Minimap_Ward_Green.tga"
MinimapIconEnemyTextureName = "Minimap_Ward_Green_Enemy.tga"
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {Name = "visionward"}
  },
  {
    Function = BBPreloadCharacter,
    Params = {Name = "visionward"}
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "sightward"}
  },
  {
    Function = BBPreloadCharacter,
    Params = {Name = "sightward"}
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "sharedwardbuff"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "itemghostward"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "itemplacementmissile"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "masteryscoutbuff"
    }
  }
}
