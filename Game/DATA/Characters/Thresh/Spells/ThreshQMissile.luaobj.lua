NotSingleTargetSpell = true
DoesntBreakShields = false
BuffTextureName = "SadMummy_BandageFlinger.dds"
BuffName = "ThreshEMissile"
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "thresh_q_whip_pull_beam.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "thresh_q_whip_break_beam.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "threshqfakeknockup"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "threshq"}
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "thresh_q_stab_tar.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "threshqselfroot"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "threshqpullmissile"
    }
  }
}
