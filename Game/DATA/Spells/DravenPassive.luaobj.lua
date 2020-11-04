BuffTextureName = "Draven_passive.dds"
BuffName = "DravenPassive"
PersistsThroughDeath = true
NonDispellable = true
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "dravenpassivestacks"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "draven_recall_sound.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "draven_recall_sound_reaper.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "dravenrecalloverride"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "dravenspinningattack2"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "dravenspinningattack2crit"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "draven_gold.troy"
    }
  }
}
