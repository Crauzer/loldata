NotSingleTargetSpell = true
DoesntBreakShields = false
DoesntTriggerSpellCasts = false
CastingBreaksStealth = true
IsDamagingSpell = true
BuffTextureName = "Sona_W_Gold.dds"
SpellToggleSlot = 4
PersistsThroughDeath = true
SpellFXOverrideSkins = {"GuqinSona", "PaxSona"}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {Name = "sonaw"}
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "sonawpassivecheck"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "sonawmissile"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "sona_base_w_tar.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "sonawzone"}
  }
}
