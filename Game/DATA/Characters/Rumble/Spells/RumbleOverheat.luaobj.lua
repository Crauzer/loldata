BuffTextureName = "Rumble_Junkyard Titan3.dds"
BuffName = "RumbleOverheat"
AutoBuffActivateEffect = "LOC_Silence.troy"
AutoBuffActivateAttachBoneName = "C_BUFFBONE_HEAD_LOC"
AutoBuffActivateEffect2 = "rumble_overheat.troy"
AutoBuffActivateAttachBoneName2 = "spine"
AutoBuffActivateEffect3 = "rumble_overheat_lite.troy"
AutoBuffActivateEffect4 = "rumble_overheat_lite_02.troy"
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "rumbleoverheatsound"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "rumbleheatdelay"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "rumbleheatingup"
    }
  }
}
