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
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "fizz_jump_cas.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "root"}
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "fizz_jump_weaponglow.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "fizzjumpdelay"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "fizzjumpbuffer"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "fizz_playfultrickster_idle_sound.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "fizzjumpbuffered"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "fizzjump"}
  }
}
