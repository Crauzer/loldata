BuffTextureName = "GSB_taunt.dds"
BuffName = "Taunt"
AutoBuffActivateEffect = ""
AutoBuffActivateAttachBoneName = ""
PopupMessage1 = "game_floatingtext_Taunted"
OnBuffActivateBuildingBlocks = {
  {
    Function = BBStopChanneling,
    Params = {
      CasterVar = "Owner",
      StopCondition = ChannelingStopCondition_Cancel,
      StopSource = ChannelingStopSource_StunnedOrSilencedOrTaunted
    }
  },
  {
    Function = BBSetStatus,
    Params = {
      TargetVar = "Owner",
      SrcValue = true,
      Status = SetTaunted
    }
  },
  {
    Function = BBApplyAssistMarker,
    Params = {
      Duration = 10,
      TargetVar = "Owner",
      SourceVar = "Attacker"
    }
  },
  {
    Function = BBGetUnitSkinName,
    Params = {
      TargetVar = "Attacker",
      DestVar = "attackerName"
    }
  },
  {
    Function = BBGetTeamID,
    Params = {TargetVar = "Attacker", DestVar = "TeamID"}
  },
  {
    Function = BBSetVarInTable,
    Params = {DestVar = "removePart"}
  },
  {
    Function = BBIfHasBuff,
    Params = {
      OwnerVar = "Attacker",
      AttackerVar = "Attacker",
      BuffName = "GalioRunicSkin"
    },
    SubBlocks = {
      {
        Function = BBSpellEffectCreate,
        Params = {
          BindObjectVar = "Owner",
          EffectName = "galio_taunt_unit_indicator.troy",
          Flags = 0,
          EffectIDVar = "Part",
          EffectIDVarTable = "InstanceVars",
          BoneName = "head",
          TargetObjectVar = "Owner",
          SpecificUnitOnlyVar = "Owner",
          SpecificTeamOnly = TEAM_UNKNOWN,
          UseSpecificUnit = false,
          FOWTeam = TEAM_UNKNOWN,
          FOWTeamOverrideVar = "TeamID",
          FOWVisibilityRadius = 10,
          SendIfOnScreenOrDiscard = false
        }
      }
    }
  },
  {
    Function = BBIfHasBuff,
    Params = {
      OwnerVar = "Attacker",
      AttackerVar = "Attacker",
      BuffName = "ShenWayOfTheNinjaMarker"
    },
    SubBlocks = {
      {
        Function = BBSpellEffectCreate,
        Params = {
          BindObjectVar = "Owner",
          EffectName = "Global_Taunt_multi_unit.troy",
          Flags = 0,
          EffectIDVar = "Part",
          EffectIDVarTable = "InstanceVars",
          BoneName = "head",
          TargetObjectVar = "Owner",
          SpecificUnitOnlyVar = "Owner",
          SpecificTeamOnly = TEAM_UNKNOWN,
          UseSpecificUnit = false,
          FOWTeam = TEAM_UNKNOWN,
          FOWTeamOverrideVar = "TeamID",
          FOWVisibilityRadius = 10,
          SendIfOnScreenOrDiscard = false
        }
      },
      {
        Function = BBSpellEffectCreate,
        Params = {
          BindObjectVar = "Owner",
          EffectName = "shen_shadowDash_unit_impact.troy",
          Flags = 0,
          EffectIDVar = "Part2",
          TargetObjectVar = "Owner",
          SpecificUnitOnlyVar = "Owner",
          SpecificTeamOnly = TEAM_UNKNOWN,
          UseSpecificUnit = false,
          FOWTeam = TEAM_UNKNOWN,
          FOWTeamOverrideVar = "TeamID",
          FOWVisibilityRadius = 10,
          SendIfOnScreenOrDiscard = true
        }
      }
    }
  },
  {
    Function = BBIfHasBuff,
    Params = {
      OwnerVar = "Attacker",
      AttackerVar = "Attacker",
      BuffName = "SpikedShell"
    },
    SubBlocks = {
      {
        Function = BBSpellEffectCreate,
        Params = {
          BindObjectVar = "Owner",
          EffectName = "global_taunt.troy",
          Flags = 0,
          EffectIDVar = "Part",
          EffectIDVarTable = "InstanceVars",
          BoneName = "head",
          TargetObjectVar = "Target",
          SpecificUnitOnlyVar = "Owner",
          SpecificTeamOnly = TEAM_UNKNOWN,
          UseSpecificUnit = false,
          FOWTeam = TEAM_UNKNOWN,
          FOWTeamOverrideVar = "TeamID",
          FOWVisibilityRadius = 10,
          SendIfOnScreenOrDiscard = false
        }
      }
    }
  }
}
OnBuffDeactivateBuildingBlocks = {
  {
    Function = BBSetStatus,
    Params = {
      TargetVar = "Owner",
      SrcValue = false,
      Status = SetTaunted
    }
  },
  {
    Function = BBSpellEffectRemove,
    Params = {
      EffectIDVar = "Part",
      EffectIDVarTable = "InstanceVars"
    }
  }
}
BuffOnUpdateStatsBuildingBlocks = {
  {
    Function = BBIf,
    Params = {Src1Var = "Attacker", CompareOp = CO_IS_DEAD},
    SubBlocks = {
      {
        Function = BBSpellBuffRemoveCurrent,
        Params = {TargetVar = "Owner"}
      }
    }
  },
  {
    Function = BBElse,
    Params = {},
    SubBlocks = {
      {
        Function = BBSetStatus,
        Params = {
          TargetVar = "Owner",
          SrcValue = true,
          Status = SetTaunted
        }
      }
    }
  }
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "galiorunicskin"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "galio_taunt_unit_indicator.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "shenwayoftheninjamarker"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "global_taunt_multi_unit.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "shen_shadowdash_unit_impact.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "spikedshell"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "global_taunt.troy"
    }
  }
}
