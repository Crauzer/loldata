NotSingleTargetSpell = true
DoesntTriggerSpellCasts = true
BuffTextureName = "Ashe_Q.dds"
BuffName = "Frost Shot"
AutoBuffActivateEffect = "Ashe_Base_q_buf.troy"
AutoBuffActivateAttachBoneName = "Bow_04"
AutoBuffActivateEffect2 = "Ashe_Base_q_buf.troy"
AutoBuffActivateAttachBoneName2 = "Bow_02"
AutoBuffActivateEffect3 = "Ashe_Base_q_buf.troy"
AutoBuffActivateAttachBoneName3 = "Bow_03"
AutoBuffActivateEffect4 = "Ashe_Base_q_buf.troy"
AutoBuffActivateAttachBoneName4 = "Bow_05"
SpellToggleSlot = 1
NonDispellable = true
TriggersSpellCasts = false
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "frostarrowapplicator"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "frostarrow"}
  }
}
