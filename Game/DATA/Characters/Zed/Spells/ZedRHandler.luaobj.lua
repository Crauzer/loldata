NotSingleTargetSpell = true
DoesntBreakShields = false
DoesntTriggerSpellCasts = false
CastingBreaksStealth = true
IsDamagingSpell = true
BuffTextureName = "shadowninja_R2.dds"
BuffName = "ZedRHandler"
SpellToggleSlot = 4
SpellFXOverrideSkins = {
  "ReefMalphite",
  "GlacialMalphite"
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {Name = "zedr2"}
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "zedult"}
  }
}
