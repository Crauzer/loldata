NotSingleTargetSpell = true
DoesntTriggerSpellCasts = false
BuffTextureName = "Armsmaster_Empower.dds"
BuffName = "EmpowerTwo"
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "armsmaster_empower_self_01.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "armsmaster_empower_buf.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "empowertwohit_tar.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "empowertwo"}
  }
}
