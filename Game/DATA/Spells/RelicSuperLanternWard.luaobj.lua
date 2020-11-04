NotSingleTargetSpell = true
DoesntTriggerSpellCasts = true
BuffTextureName = "1020_Glowing_Orb.dds"
BuffName = "SightWard"
AutoBuffActivateEffect = "Global_Trinket_Yellow.troy"
AutoBuffActivateEffect2 = "Ward_Sight_Idle.troy"
AutoBuffActivateAttachBoneName2 = "head"
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "expirationtimer"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "global_trinket_yellow_death.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "sightwardstealth"
    }
  }
}
