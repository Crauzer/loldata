NotSingleTargetSpell = true
DoesntBreakShields = true
DoesntTriggerSpellCasts = false
CastingBreaksStealth = true
IsDamagingSpell = true
SpellFXOverrideSkins = {
  "PentakillOlaf"
}
SpellVOOverrideSkins = {"BroOlaf"}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {Name = "olafslow"}
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "olafaxethrowdamage"
    }
  },
  {
    Function = BBPreloadCharacter,
    Params = {Name = "olafaxe"}
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "olafaxeexpirationtimer"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "olaf_pentakill_q_cymbal.troy"
    }
  }
}
