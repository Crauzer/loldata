NotSingleTargetSpell = true
DoesntTriggerSpellCasts = false
IsDamagingSpell = true
BuffTextureName = "Bowmaster_EnchantedArrow.dds"
BuffName = "Enchanted Crystal Arrow"
AutoBuffActivateEffect2 = "LOC_Stun.troy"
AutoBuffActivateAttachBoneName2 = "head"
SpellDamageRatio = 0.5
PopupMessage1 = "game_floatingtext_Stunned"
TriggersSpellCasts = true
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {Name = "chilled"}
  }
}
