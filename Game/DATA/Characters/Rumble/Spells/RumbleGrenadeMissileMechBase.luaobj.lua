NotSingleTargetSpell = false
DoesntBreakShields = false
DoesntTriggerSpellCasts = true
IsDamagingSpell = true
BuffTextureName = "Soraka_Starcall.dds"
BuffName = "RumbleGrenadeDebuff"
PopupMessage1 = "game_floatingtext_Snared"
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "rumblegrenadezapeffect"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "rumblegrenadeslow"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "rumblegrenadedebuff"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "rumble_skin03_e_tar.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "rumble_taze_tar.troy"
    }
  }
}
