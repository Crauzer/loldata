NotSingleTargetSpell = true
DoesntTriggerSpellCasts = false
BuffTextureName = "Darius_Icon_Hamstring.dds"
BuffName = "DariusNoxianTacticsActive"
AutoBuffActivateEffect = "darius_W_weapon_01.troy"
AutoBuffActivateAttachBoneName = "weapon"
AutoBuffActivateEffect2 = "darius_W_weapon_01.troy"
AutoBuffActivateAttachBoneName2 = "L_BUFFBONE_GLB_HAND_LOC"
AutoBuffActivateEffect3 = "darius_W_weapon_03.troy"
AutoBuffActivateEffect4 = "darius_W_weapon_04.troy"
AutoBuffActivateAttachBoneName4 = "BUFFBONE_CSTM_WEAPON_9"
IsDeathRecapSource = true
SpellFXOverrideSkins = {
  "Darius_ZaunKnight"
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "darius_w_weapon_02.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "darius_w_activate_zaunknight.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "darius_atomic_mist.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "dariuszauntubedrain"
    }
  }
}
