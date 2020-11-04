NotSingleTargetSpell = true
DoesntTriggerSpellCasts = false
CastingBreaksStealth = true
BuffTextureName = "MonkeyKingCyclone.dds"
BuffName = "MonkeyKingSpinToWin"
TriggersSpellCasts = true
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "monkey_king_ult_spin.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "monkeyking_weapon_glow_01.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "monkey_king_ult_unit_tar.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "monkeykingspinmarker"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "monkey_king_ult_unit_tar_02.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "monkeykingspinknockup"
    }
  },
  {
    Function = BBPreloadCharacter,
    Params = {
      Name = "monkeykingclone"
    }
  },
  {
    Function = BBPreloadCharacter,
    Params = {Name = "monkeyking"}
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "nightmarebotmonkeykingdecoyclone"
    }
  }
}
