NotSingleTargetSpell = true
DoesntBreakShields = true
DoesntTriggerSpellCasts = true
CastingBreaksStealth = true
BuffTextureName = "Summoner_Exhaust.dds"
BuffName = "SummonerExhaustDebuff"
AutoBuffActivateEffect = "Global_ss_exhaust.troy"
AutoBuffActivateAttachBoneName = "Buffbone_Glb_Ground_Loc"
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "summoner_cast.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "summonerexhaustslow"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "summonerexhaust"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "summonerexhaustdebuff"
    }
  }
}
