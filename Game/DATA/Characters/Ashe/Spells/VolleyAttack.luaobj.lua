NotSingleTargetSpell = true
DoesntTriggerSpellCasts = true
SpellDamageRatio = 0.5
SpellFXOverrideSkins = {"AsheSkin06"}
TriggersSpellCasts = false
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "ashe_base_w_tar.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "volleyattack"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "frostarrow"}
  }
}
