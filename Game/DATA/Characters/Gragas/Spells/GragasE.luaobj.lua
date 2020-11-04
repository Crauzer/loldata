NotSingleTargetSpell = true
DoesntBreakShields = false
DoesntTriggerSpellCasts = false
CastingBreaksStealth = true
IsDamagingSpell = true
BuffTextureName = "GragasBodySlam.dds"
BuffName = "GragasBodySlam"
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {Name = "gragase"}
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "gragas_base_e_cas.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "gragaseholder"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "gragas_base_e_tar_chest.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "gragas_base_e_tar_ground.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "gragasestun"
    }
  }
}
