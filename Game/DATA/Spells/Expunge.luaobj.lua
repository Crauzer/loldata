NotSingleTargetSpell = true
DoesntBreakShields = true
DoesntTriggerSpellCasts = false
BuffTextureName = "Twitch_Expunge.dds"
BuffName = "ExpungeAttackSpeed"
AutoBuffActivateEffect = "twitch_ambush_buf.troy"
AutoBuffActivateAttachBoneName = "r_hand"
AutoBuffActivateEffect2 = "twitch_ambush_buf.troy"
AutoBuffActivateAttachBoneName2 = "l_hand"
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "expunge_tar_02.troy"
    }
  }
}
