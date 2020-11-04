DoesntTriggerSpellCasts = true
BuffTextureName = "Annie_GuardianIncinerate.dds"
BuffName = "Infernal Guardian"
PersistsThroughDeath = true
NonDispellable = true
SpellFXOverrideSkins = {
  "MakerViktor"
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "viktor_chaosstorm_green.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "viktor_chaosstorm_red.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "viktor_chaosstorm_beam.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "viktor_chaosstorm_hit.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "root"}
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "viktor_chaosstorm_damage_sound.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "viktorchaosstorm"
    }
  }
}
