NotSingleTargetSpell = true
DoesntBreakShields = false
DoesntTriggerSpellCasts = false
CastingBreaksStealth = true
IsDamagingSpell = true
BuffTextureName = ""
BuffName = ""
AutoBuffActivateEffect = ""
AutoBuffActivateAttachBoneName = ""
SpellFXOverrideSkins = {
  "ReefMalphite"
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadCharacter,
    Params = {Name = "testcube"}
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "nautilus_e_impact.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "expirationtimer"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "nautilussplashzoneslow"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "nautilussplashzonemarker"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "nautilus_e_impact_unit_tar.troy"
    }
  }
}
