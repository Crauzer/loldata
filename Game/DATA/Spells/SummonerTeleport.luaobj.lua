NotSingleTargetSpell = true
DoesntTriggerSpellCasts = true
CastingBreaksStealth = true
BuffTextureName = "Summoner_teleport.dds"
BuffName = "Teleport"
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "summoner_cast.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "global_ss_teleport_blue.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "global_ss_teleport_red.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "teleportcancel"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "global_ss_teleport_flash_blue.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "global_ss_teleport_flash_red.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "global_ss_teleport_arrive_blue.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "global_ss_teleport_arrive_red.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "summonerteleport"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "teleport_turret"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "teleport_target"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "teleport_deathremoval"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "destealth"}
  }
}
