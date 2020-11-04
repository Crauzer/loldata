NotSingleTargetSpell = true
DoesntTriggerSpellCasts = false
IsDamagingSpell = true
BuffTextureName = "Ashe_R.dds"
BuffName = "Enchanted Crystal Arrow"
AutoBuffActivateEffect2 = "LOC_Stun.troy"
AutoBuffActivateAttachBoneName2 = "C_BUFFBONE_GLB_HEAD_LOC"
SpellDamageRatio = 0.5
PopupMessage1 = "game_floatingtext_Stunned"
SpellFXOverrideSkins = {"AsheSkin06"}
TriggersSpellCasts = true
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "ashe_base_r_tar.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "enchantedcrystalarrowslow"
    }
  }
}
