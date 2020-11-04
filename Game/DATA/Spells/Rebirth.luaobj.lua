NotSingleTargetSpell = false
DoesntBreakShields = true
DoesntTriggerSpellCasts = true
CastingBreaksStealth = true
IsDamagingSpell = false
BuffTextureName = "Cryophoenix_Rebirth.dds"
BuffName = "Rebirth"
PersistsThroughDeath = true
NonDispellable = true
SpellFXOverrideSkins = {
  "AniviaEggBlackIce"
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "laywaste_point.troy"
    }
  },
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
      Name = "blackiceaniviarebirth_cas.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "rebirthanimationplay"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "rebirth_cas.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "rebirthanimationreset"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "aniviaeggdeathanimationplay"
    }
  }
}
