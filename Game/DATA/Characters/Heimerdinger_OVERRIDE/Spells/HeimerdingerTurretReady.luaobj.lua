BuffTextureName = "Heimerdinger_Q1.dds"
BuffName = "Heimerdinger Turret Ready"
PersistsThroughDeath = true
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "heimerdingerturretready"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "heimer_q_ammo1.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "heimer_q_ammo2.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "heimer_q_ammo3.troy"
    }
  }
}
