NotSingleTargetSpell = true
DoesntBreakShields = true
DoesntTriggerSpellCasts = false
CastingBreaksStealth = true
IsDamagingSpell = false
BuffTextureName = "Nidalee_PrimalSurge.dds"
BuffName = "PrimalSurge"
AutoBuffActivateEffect3 = "nidalee_primal_surge_attack_buf.troy"
AutoBuffActivateAttachBoneName3 = "L_hand"
AutoBuffActivateEffect4 = "nidalee_primal_surge_attack_buf.troy"
AutoBuffActivateAttachBoneName4 = "R_hand"
SpellFXOverrideSkins = {
  "HeadhunterNidalee"
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "nidalee_primalsurge_tar.troy"
    }
  }
}
