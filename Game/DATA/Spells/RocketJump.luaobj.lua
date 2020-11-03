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
SpellFXOverrideSkins = {
  "RocketTristana"
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "tristana_rocketjump_cas.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "root"}
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "tristana_rocket_rocketjump_land.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "tristana_rocketjump_land.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "tristana_rocketjump_unit_tar.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "rocketjumpslow"
    }
  }
}
