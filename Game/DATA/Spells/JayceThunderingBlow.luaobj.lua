NotSingleTargetSpell = false
DoesntTriggerSpellCasts = false
IsDamagingSpell = true
SpellVOOverrideSkins = {
  "Jayce_Sentinel"
}
TriggersSpellCasts = true
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "jayceknockedbuff"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "jayce_thunderingblow_tar.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "jayce_thunderingblow_hit.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "jaycethunderblownochase"
    }
  }
}
