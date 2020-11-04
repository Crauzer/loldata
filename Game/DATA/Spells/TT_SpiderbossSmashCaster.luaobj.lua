BuffTextureName = "48thSlave_SoulDrain.dds"
BuffName = "TTSpiderbossSmash"
AutoBuffActivateEffect = "PropelGeyser.troy"
AutoBuffActivateAttachBoneName = "root"
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "tt_spider_hit_ground.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "tt_spiderbosssmashcheck"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "tt_spiderbossattackdebuff"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "tt_spiderbossattackdebuff2"
    }
  }
}
