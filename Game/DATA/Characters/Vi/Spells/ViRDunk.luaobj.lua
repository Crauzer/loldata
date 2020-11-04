NotSingleTargetSpell = false
DoesntBreakShields = true
DoesntTriggerSpellCasts = false
BuffTextureName = "Minotaur_Headbutt.dds"
BuffName = "Charging"
SpellDamageRatio = 1
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "virdunktargetself"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "vi_racer_r_pillar.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "vi_r_pillar.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "suppression"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "virdunktarget"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "virdunkstun"
    }
  }
}
