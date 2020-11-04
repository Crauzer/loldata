NotSingleTargetSpell = true
DoesntBreakShields = true
DoesntTriggerSpellCasts = true
CastingBreaksStealth = true
IsDamagingSpell = true
BuffTextureName = "48thSlave_SoulDrain.dds"
BuffName = "WormAttack"
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "sru_baron_ba1.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "baronmeleestun"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "barondebuff"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "baronattackstop"
    }
  }
}
