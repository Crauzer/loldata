NotSingleTargetSpell = true
DoesntTriggerSpellCasts = false
IsDamagingSpell = true
BuffTextureName = "SadMummy_Tantrum.dds"
BuffName = "Tantrum"
PersistsThroughDeath = true
NonDispellable = true
SpellFXOverrideSkins = {
  "BadrobotAmumu"
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "tantrum_cas.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "amumu_sadrobot_tantrum_tar.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "tantrum_tar.troy"
    }
  }
}
