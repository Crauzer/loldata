NotSingleTargetSpell = true
DoesntBreakShields = true
DoesntTriggerSpellCasts = false
AutoBuffActivateEffect = "GLOBAL_SLOW.TROY"
PopupMessage1 = "game_floatingtext_Slowed"
TriggersSpellCasts = true
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "quin_q_unit_tar.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "Quinn_Base_Q_tar.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "quinnq"}
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "Quinn_Base_Q_AOE_unit_tar.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "QuinnValor_Base_Q_Tar.troy"
    }
  }
}
