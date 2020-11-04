NotSingleTargetSpell = true
DoesntBreakShields = true
DoesntTriggerSpellCasts = true
CastingBreaksStealth = true
IsDamagingSpell = true
BuffTextureName = "Xerath_E.dds"
BuffName = "XerathMageSpear"
SpellToggleSlot = 1
SpellFXOverrideSkins = {
  "IronForgeXerath"
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "xerath_base_e_tar.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "xerathmagechains"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "xerath_base_e_explosion.troy"
    }
  }
}
