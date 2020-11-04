NotSingleTargetSpell = true
DoesntTriggerSpellCasts = false
BuffTextureName = "Skarner_W.dds"
BuffName = "SkarnerExoskeleton"
AutoBuffActivateAttachBoneName3 = "chest"
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "skarner_base_w_body.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "skarner_base_w_buf_r_arm.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "skarner_base_w_buf_l_arm.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "skarner_base_w_buf_tail.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "skarner_exoskeleon_shatter.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "skarner_w_buff_lines.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "unlockanimation"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "skarnerexoskeleton"
    }
  }
}
