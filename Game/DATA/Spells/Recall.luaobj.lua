NotSingleTargetSpell = true
DoesntTriggerSpellCasts = true
CastingBreaksStealth = true
ChannelDuration = 8
BuffTextureName = "RecallHome.dds"
BuffName = "Recall"
SpellFXOverrideSkins = {
  "OktoberGragas"
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "teleporthome.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "teleportarrive.troy"
    }
  }
}
