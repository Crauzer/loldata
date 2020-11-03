BuffTextureName = "Irelia_Bladesurge.dds"
BuffName = "IreliaGatotsuDash"
IsDeathRecapSource = true
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "irelia_gotasu_dash_02.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "root"}
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "ireliagatotsu"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "ireliagatotsudashparticle"
    }
  }
}
