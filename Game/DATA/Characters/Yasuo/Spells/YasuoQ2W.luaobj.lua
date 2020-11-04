NotSingleTargetSpell = true
DoesntBreakShields = true
DoesntTriggerSpellCasts = false
IsDamagingSpell = false
BuffTextureName = "VarusQCharging.dds"
BuffName = "ViQ"
SpellToggleSlot = 1
OnPreDamagePriority = 3
ChainMissileParameters = {
  MaximumHits = {
    4,
    4,
    4,
    4,
    4
  },
  CanHitCaster = 0,
  CanHitSameTarget = 0,
  CanHitSameTargetConsecutively = 0,
  CanHitEnemies = 1,
  CanHitFriends = 0
}
SpellFXOverrideSkins = {
  "YasuoSkin02"
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "yasuo_skin01_q2_sound.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "yasuo_q2_sound.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "temp_yasuo_q_sound.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "root"}
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "yasuoq2"}
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "yasuo_skin01_q_windstrike_02.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "yasuo_base_q_windstrike_02.troy"
    }
  }
}
