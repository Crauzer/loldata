BuffTextureName = "GravesSmokeGrenade.dds"
BuffName = "GravesSmokeGrenade"
AutoBuffActivateEffect = "Nearsight_glb.troy"
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "graves_smokegrenade_boom.troy"
    }
  },
  {
    Function = BBPreloadCharacter,
    Params = {Name = "testcube"}
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "gravessmokegrenade"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "gravessmokegrenadesecretpassive"
    }
  }
}
