NotSingleTargetSpell = true
DoesntTriggerSpellCasts = false
BuffTextureName = "GragasDrunkenRage.dds"
BuffName = "GragasDrunkenRage"
AutoBuffActivateEffect = "Gragas_Base_W_Buf_Hands.troy"
AutoBuffActivateAttachBoneName = "L_BUFFBONE_GLB_HAND_LOC"
AutoBuffActivateEffect2 = "Gragas_Base_W_Buf_Hands.troy"
AutoBuffActivateAttachBoneName2 = "R_BUFFBONE_GLB_HAND_LOC"
AutoCooldownByLevel = {
  50,
  50,
  50,
  50,
  50
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "gragaswself"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "gragaswattackbuff"
    }
  }
}
