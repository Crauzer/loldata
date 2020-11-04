NotSingleTargetSpell = true
DoesntBreakShields = true
DoesntTriggerSpellCasts = true
CastingBreaksStealth = true
IsDamagingSpell = true
BuffTextureName = "Cryophoenix_GlacialStorm.dds"
BuffName = "GlacialStorm"
SpellToggleSlot = 4
SpellVOOverrideSkins = {
  "BlackIceAnivia"
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "cryo_storm_green_team.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "cryo_storm_red_team.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "chilled"}
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "glacialstorm"
    }
  }
}
