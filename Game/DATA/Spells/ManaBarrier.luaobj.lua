NotSingleTargetSpell = true
DoesntTriggerSpellCasts = false
BuffTextureName = "Blitzcrank_ManaBarrier.dds"
BuffName = "ManaBarrier"
AutoBuffActivateEffect = ""
AutoCooldownByLevel = {
  0,
  0,
  0,
  0,
  0
}
NonDispellable = true
DoOnPreDamageInExpirationOrder = true
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "steamgolemshield.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "steamgolemshield_hit.troy"
    }
  }
}
