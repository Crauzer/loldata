BuffTextureName = "GnarBig_R.dds"
BuffName = "GnarR"
SpellFXOverrideSkins = {
  "CyberEzreal"
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "gnarrknockback"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "gnar_base_r_land.troy"
    }
  }
}
