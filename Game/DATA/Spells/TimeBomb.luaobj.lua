NotSingleTargetSpell = false
DoesntTriggerSpellCasts = false
IsDamagingSpell = true
BuffTextureName = "Chronokeeper_Chronoblast.dds"
BuffName = "Time Bomb"
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "timebomb_green.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "timebomb_red.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "root"}
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "timebombexplo.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "timebombcountdown"
    }
  }
}
