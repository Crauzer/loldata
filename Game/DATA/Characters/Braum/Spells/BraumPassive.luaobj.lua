BuffTextureName = "LeonaShieldOfDaybreak.DDS"
BuffName = "BraumPassive"
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {Name = "braummark"}
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "braummarkcounter"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "braum_base_p_coolddown_hit_tar.troy"
    }
  }
}
