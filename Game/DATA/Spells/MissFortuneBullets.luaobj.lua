NotSingleTargetSpell = true
DoesntBreakShields = true
DoesntTriggerSpellCasts = true
CastingBreaksStealth = true
IsDamagingSpell = true
SpellDamageRatio = 1
PopupMessage1 = "game_floatingtext_Slowed"
TriggersSpellCasts = false
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "missfortunewavehold"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "missfortunebulletholder"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "missfortunepassivestack"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "missfortune_passive_tar_indicator.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "missfortune_bullettime_tar.troy"
    }
  }
}
