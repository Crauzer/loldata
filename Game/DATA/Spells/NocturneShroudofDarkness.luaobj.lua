NotSingleTargetSpell = true
DoesntTriggerSpellCasts = false
BuffTextureName = "Nocturne_ShroudofDarkness.dds"
BuffName = "NocturneShroudofDarknessShield"
AutoBuffActivateEffect = "nocturne_shroudofDarkness_shield.troy"
AutoBuffActivateAttachBoneName = "C_BUFFBONE_GLB_CENTER_LOC"
AutoBuffActivateEffect2 = "nocturne_shroudofDarkness_shield_cas_02.troy"
AutoBuffActivateAttachBoneName2 = "Head"
AutoBuffActivateEffect3 = "nocturne_shroudofDarkness_shield_cas_ground.troy"
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "nocturne_shroud_deactivatetrigger.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "nocturneshroudofdarknessbuff"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "unlockanimation"
    }
  }
}
