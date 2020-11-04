NotSingleTargetSpell = true
DoesntTriggerSpellCasts = false
IsDamagingSpell = true
BuffTextureName = "Thresh_Q.dds"
BuffName = "ThreshQ"
PopupMessage1 = "game_floatingtext_Stunned"
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "thresh_q_stab_tar.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "thresh_q_voice_special_sound.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "root"}
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
      Name = "threshqinternal"
    }
  }
}
