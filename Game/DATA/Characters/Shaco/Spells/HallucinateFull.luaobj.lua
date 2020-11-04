NotSingleTargetSpell = true
DoesntTriggerSpellCasts = false
CastingBreaksStealth = false
IsDamagingSpell = false
BuffTextureName = "Jester_HallucinogenBomb.dds"
BuffName = "Hallucinate"
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "jester_copy.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "root"}
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "hallucinateguide"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "hallucinate_nova.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "hallucinatefull"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "hallucinateapplicator"
    }
  }
}
