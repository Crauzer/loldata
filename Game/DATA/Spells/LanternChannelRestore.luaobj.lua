NotSingleTargetSpell = true
DoesntTriggerSpellCasts = true
CastingBreaksStealth = true
ChannelDuration = 8
BuffTextureName = "RecallHome.dds"
BuffName = "Recall"
SpellFXOverrideSkins = {
  "OktoberGragas",
  "MetalWingedJudicator",
  "ClericSoraka",
  "SpiritUdyr"
}
SpellVOOverrideSkins = {
  "ZombieBrand",
  "CyberNocturne"
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "teleportarrive.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "recallends"}
  }
}
