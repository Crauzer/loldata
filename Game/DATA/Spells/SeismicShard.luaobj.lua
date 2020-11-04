BuffTextureName = "Malphite_SeismicShard.dds"
BuffName = "SeismicShard"
SpellFXOverrideSkins = {
  "GlacialMalphite",
  "MalphiteSkin06"
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "seismicshardbuff"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "seismicshard_tar_glacial.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "malphite_base_seismicshard_tar.troy"
    }
  }
}
