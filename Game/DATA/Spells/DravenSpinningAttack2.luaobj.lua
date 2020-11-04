BuffTextureName = "3071_The_Black_Cleaver.dds"
BuffName = "DravenSpinning"
SpellVOOverrideSkins = {
  "Draven_SoulReaper"
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "draven_q_tar_shadow.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "draven_q_tar.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "dravendot"}
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "dravenspinningreturncatch"
    }
  }
}
