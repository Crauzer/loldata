NotSingleTargetSpell = true
DoesntTriggerSpellCasts = true
BuffTextureName = "Vladimir_Hemoplague.dds"
BuffName = "VladimirHemoplagueDebuff"
SpellFXOverrideSkins = {
  "BloodkingVladimir",
  "VladimirSkin06"
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "vladhemoplague_bloodking_tar.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "vladimir_base_r_debuff.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "vladhemoplague_bloodking_proc.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "vladimir_base_r_damageproc.troy"
    }
  }
}
