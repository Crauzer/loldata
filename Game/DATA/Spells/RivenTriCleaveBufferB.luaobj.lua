NotSingleTargetSpell = true
DoesntTriggerSpellCasts = false
IsDamagingSpell = true
BuffTextureName = "AkaliCrescentSlash.dds"
BuffName = "RenekthonCleaveReady"
SpellToggleSlot = 1
SpellDamageRatio = 0.5
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "marthtricleavebuffer"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "marthtricleave"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "marthtricleavebuffered"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "marthtricleavebufferlock"
    }
  }
}
