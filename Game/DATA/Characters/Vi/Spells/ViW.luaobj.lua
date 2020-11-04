BuffTextureName = "ViW.dds"
BuffName = "ViW"
IsDeathRecapSource = true
PersistsThroughDeath = true
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {Name = "viwbuff"}
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "vi_armorshred_hold.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "vi_armorshred.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "viwshred"}
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "vipassivebuff"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "vi_armorshred_minion.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "vi_armorshred_dragon.troy"
    }
  }
}
