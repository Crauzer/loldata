BuffTextureName = "Lulu_Glitterbolt.dds"
BuffName = "LuluQSlow"
AutoBuffActivateEffect = "GLOBAL_SLOW.TROY"
AutoBuffActivateEffect2 = "lulu_Q_slow_trigger_units.troy"
PopupMessage1 = "game_floatingtext_Slowed"
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "Braum_net_slow.troy"
    }
  }
}
