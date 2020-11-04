NotSingleTargetSpell = false
DoesntBreakShields = true
DoesntTriggerSpellCasts = false
IsDamagingSpell = true
BuffTextureName = "Ahri_FoxFire.dds"
BuffName = "AhriFoxFire"
SpellDamageRatio = 1
SpellVOOverrideSkins = {"AhriSkin04"}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "ahri_foxfire_obd-sound.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "unlockanimation"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "ahri_foxfire_cas.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "ahri_foxfire_weapon_cas.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "ahrifoxfire"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "ahrifoxfiremissile"
    }
  }
}
