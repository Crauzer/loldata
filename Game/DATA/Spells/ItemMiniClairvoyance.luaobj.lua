NotSingleTargetSpell = true
DoesntBreakShields = true
DoesntTriggerSpellCasts = true
CastingBreaksStealth = false
IsDamagingSpell = false
AutoBuffActivateEffect = "GuinsoosRodofOblivion_buf.troy"
PersistsThroughDeath = true
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "summoner_cast.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "clairvoyanceeyelong_green.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "clairvoyanceeyelong_red.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "global_trinket_itemminiclairvoyance.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "global_trinket_itemminiclairvoyance_red.troy"
    }
  }
}
