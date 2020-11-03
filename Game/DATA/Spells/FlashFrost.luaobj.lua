NotSingleTargetSpell = false
DoesntBreakShields = true
DoesntTriggerSpellCasts = false
CastingBreaksStealth = true
IsDamagingSpell = true
BuffTextureName = "Cryophoenix_FrigidOrb.dds"
BuffName = "Flash Frost"
SpellToggleSlot = 1
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "cryo_flashfrost_tar.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "chilled"}
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "flashfrost"}
  }
}
