NotSingleTargetSpell = true
DoesntBreakShields = true
DoesntTriggerSpellCasts = true
IsDamagingSpell = true
BuffName = "LissandraQ"
IsDeathRecapSource = true
SpellFXOverrideSkins = {
  "Lissandra_skin01"
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "lissandra_q_tar2.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "lissandraqshards"
    }
  }
}
