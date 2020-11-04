NotSingleTargetSpell = false
DoesntTriggerSpellCasts = false
IsDamagingSpell = true
BuffName = "GalioRighteousGustMissile"
SpellFXOverrideSkins = {
  "GatekeeperGalio"
}
SpellVOOverrideSkins = {
  "GatekeeperGalio"
}
TriggersSpellCasts = true
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "galio_windtunnel_rune.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "galio_windtunnel_rune_team_red.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "galiorighteousgusthaste"
    }
  },
  {
    Function = BBPreloadCharacter,
    Params = {Name = "testcube"}
  }
}
