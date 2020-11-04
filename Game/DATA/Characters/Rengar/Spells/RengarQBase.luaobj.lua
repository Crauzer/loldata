NotSingleTargetSpell = true
DoesntTriggerSpellCasts = false
CastingBreaksStealth = false
BuffTextureName = "RengarQ.dds"
BuffName = "RengarQBuff"
AutoBuffActivateEffect = "Rengar_Base_Q_Buf_Blade.troy"
AutoBuffActivateAttachBoneName = "Weapon"
AutoBuffActivateEffect2 = "Rengar_Base_Q_Buf_Claw.troy"
AutoBuffActivateAttachBoneName2 = "L_Buffbone_Glb_Hand_Loc"
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "rengarmanager"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "rengarqbasebuff"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "rengarqbuffbonus"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "rengar_base_q_tar.troy"
    }
  }
}
