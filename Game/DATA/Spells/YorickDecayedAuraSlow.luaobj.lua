BuffTextureName = "Chronokeeper_Timestop.dds"
BuffName = "Slow"
AutoBuffActivateEffect = "GLOBAL_SLOW.TROY"
AutoBuffActivateAttachBoneName = ""
PopupMessage1 = "game_floatingtext_Slowed"
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "yorickdecayedslow"
    }
  }
}
