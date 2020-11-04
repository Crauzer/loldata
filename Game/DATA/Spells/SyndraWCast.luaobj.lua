NotSingleTargetSpell = true
DoesntBreakShields = true
DoesntTriggerSpellCasts = false
AutoCooldownByLevel = {
  20,
  18,
  16,
  14,
  12
}
IsDeathRecapSource = true
SpellFXOverrideSkins = {
  "RocketTristana"
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "syndrawdebuff"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "syndrawfailsafe"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "syndraw"}
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "syndrawmana"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "syndrawspeed"
    }
  }
}
