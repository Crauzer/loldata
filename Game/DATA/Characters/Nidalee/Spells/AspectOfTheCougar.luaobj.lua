NotSingleTargetSpell = true
DoesntBreakShields = true
DoesntTriggerSpellCasts = true
CastingBreaksStealth = true
IsDamagingSpell = false
BuffTextureName = "Nidalee_AspectOfTheCougar.dds"
BuffName = "AspectOfTheCougar"
SpellToggleSlot = 4
PersistsThroughDeath = true
NonDispellable = true
SpellFXOverrideSkins = {
  "HeadhunterNidalee"
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadCharacter,
    Params = {
      Name = "nidalee_cougar"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "nidalee_transform.troy"
    }
  }
}
