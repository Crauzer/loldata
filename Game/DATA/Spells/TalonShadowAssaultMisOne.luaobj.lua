NotSingleTargetSpell = true
DoesntTriggerSpellCasts = true
BuffName = "BladeRogue_AOE_Knives"
SpellDamageRatio = 0.5
TriggersSpellCasts = false
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "talonshadowassault"
    }
  },
  {
    Function = BBPreloadCharacter,
    Params = {Name = "testcube"}
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "talonshadowassaultmarker"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "talon_ult_tar.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "talonshadowassaultmisbuff"
    }
  }
}
