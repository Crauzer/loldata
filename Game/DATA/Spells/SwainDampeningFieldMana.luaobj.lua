NotSingleTargetSpell = true
DoesntBreakShields = true
DoesntTriggerSpellCasts = false
CastingBreaksStealth = true
IsDamagingSpell = false
BuffTextureName = "SwainCarrionRenewal.dds"
BuffName = "SwainDampeningFieldMana"
SpellDamageRatio = 1
PersistsThroughDeath = true
NonDispellable = true
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "swain_grand_buf.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "neutralmonster_buf.troy"
    }
  }
}
