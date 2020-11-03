NotSingleTargetSpell = false
DoesntBreakShields = true
DoesntTriggerSpellCasts = true
CastingBreaksStealth = true
IsDamagingSpell = false
BuffTextureName = "Cryophoenix_Rebirth.dds"
BuffName = "Rebirth"
NonDispellable = true
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadCharacter,
    Params = {Name = "aniviaegg"}
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "eggtimer.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "rebirthcooldown"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "rebirth_cas.troy"
    }
  }
}
