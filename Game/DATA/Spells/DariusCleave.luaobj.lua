NotSingleTargetSpell = true
DoesntTriggerSpellCasts = false
IsDamagingSpell = true
BuffTextureName = "AkaliCrescentSlash.dds"
BuffName = "RenekthonCleaveReady"
SpellToggleSlot = 1
IsDeathRecapSource = true
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "darius_q_aoe_cast.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "darius_q_tar_inner.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "darius_q_tar.troy"
    }
  }
}
