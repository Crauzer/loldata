NotSingleTargetSpell = true
DoesntBreakShields = false
DoesntTriggerSpellCasts = false
CastingBreaksStealth = true
IsDamagingSpell = true
BuffTextureName = "Armordillo_Powerball.dds"
BuffName = "PowerBall"
SpellFXOverrideSkins = {
  "HecarimArcade"
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "hecarim_e_speed_buf.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "hecarim_e_speed_buf_02.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "hecarimrampattack"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "hecarimramp"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "hecarimrampspeed"
    }
  }
}
