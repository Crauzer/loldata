BuffTextureName = "LuxLightStrikeKugel.dds"
BuffName = "LuxEEnd"
PersistsThroughDeath = true
SpellFXOverrideSkins = {
  "SteelLegionLux"
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "luxlightstriketoggle"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "luxlightstrike_mis.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "luxlightstrike_tar_green.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "luxlightstrike_tar_red.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "slow"}
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "globalhit_mana.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "luxilluminatingfraulein"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "luxlightstrikekugel"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "luxblitz_nova.troy"
    }
  }
}
