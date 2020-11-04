NotSingleTargetSpell = true
DoesntTriggerSpellCasts = false
BuffTextureName = "Cardmaster_Premonition.dds"
BuffName = "Gate"
AutoBuffActivateEffect = ""
AutoCooldownByLevel = {
  100,
  85,
  70,
  55,
  40
}
OnBuffActivateBuildingBlocks = {
  {
    Function = BBRequireVar,
    Params = {
      RequiredVar = "GateParticle",
      RequiredVarTable = "InstanceVars"
    }
  },
  {
    Function = BBRequireVar,
    Params = {
      RequiredVar = "GateParticle2",
      RequiredVarTable = "InstanceVars"
    }
  },
  {
    Function = BBRequireVar,
    Params = {
      RequiredVar = "TargetPos",
      RequiredVarTable = "InstanceVars"
    }
  },
  {
    Function = BBGetTeamID,
    Params = {
      TargetVar = "Owner",
      DestVar = "TeamOfOwner"
    }
  },
  {
    Function = BBIf,
    Params = {
      Src1Var = "TeamOfOwner",
      Value2 = TEAM_ORDER,
      CompareOp = CO_EQUAL
    },
    SubBlocks = {
      {
        Function = BBSpellEffectCreate,
        Params = {
          BindObjectVar = "Owner",
          EffectName = "CardmasterTeleport_red.troy",
          Flags = 0,
          EffectIDVar = "Particle3",
          EffectIDVarTable = "InstanceVars",
          TargetObjectVar = "Target",
          SpecificUnitOnlyVar = "Nothing",
          SpecificTeamOnly = TEAM_CHAOS,
          UseSpecificUnit = true,
          FOWTeam = TEAM_ORDER,
          FOWVisibilityRadius = 200,
          SendIfOnScreenOrDiscard = false
        }
      },
      {
        Function = BBSpellEffectCreate,
        Params = {
          BindObjectVar = "Owner",
          EffectName = "CardmasterTeleport_green.troy",
          Flags = 0,
          EffectIDVar = "Particle4",
          EffectIDVarTable = "InstanceVars",
          TargetObjectVar = "Target",
          SpecificUnitOnlyVar = "Nothing",
          SpecificTeamOnly = TEAM_ORDER,
          UseSpecificUnit = true,
          FOWTeam = TEAM_ORDER,
          FOWVisibilityRadius = 200,
          SendIfOnScreenOrDiscard = false
        }
      }
    }
  },
  {
    Function = BBElse,
    Params = {},
    SubBlocks = {
      {
        Function = BBSpellEffectCreate,
        Params = {
          BindObjectVar = "Owner",
          EffectName = "CardmasterTeleport_red.troy",
          Flags = 0,
          EffectIDVar = "Particle3",
          EffectIDVarTable = "InstanceVars",
          TargetObjectVar = "Target",
          SpecificUnitOnlyVar = "Nothing",
          SpecificTeamOnly = TEAM_ORDER,
          UseSpecificUnit = true,
          FOWTeam = TEAM_CHAOS,
          FOWVisibilityRadius = 200,
          SendIfOnScreenOrDiscard = false
        }
      },
      {
        Function = BBSpellEffectCreate,
        Params = {
          BindObjectVar = "Owner",
          EffectName = "CardmasterTeleport_green.troy",
          Flags = 0,
          EffectIDVar = "Particle4",
          EffectIDVarTable = "InstanceVars",
          TargetObjectVar = "Target",
          SpecificUnitOnlyVar = "Nothing",
          SpecificTeamOnly = TEAM_CHAOS,
          UseSpecificUnit = true,
          FOWTeam = TEAM_CHAOS,
          FOWVisibilityRadius = 200,
          SendIfOnScreenOrDiscard = false
        }
      }
    }
  },
  {
    Function = BBSetStatus,
    Params = {
      TargetVar = "Owner",
      SrcValue = false,
      Status = SetCanAttack
    }
  },
  {
    Function = BBSetStatus,
    Params = {
      TargetVar = "Owner",
      SrcValue = false,
      Status = SetCanMove
    }
  }
}
OnBuffDeactivateBuildingBlocks = {
  {
    Function = BBSetVarInTable,
    Params = {
      DestVar = "TargetPos",
      SrcVar = "TargetPos",
      SrcVarTable = "InstanceVars"
    }
  },
  {
    Function = BBDestroyMissileForTarget,
    Params = {TargetVar = "Owner"}
  },
  {
    Function = BBTeleportToPosition,
    Params = {OwnerVar = "Owner", CastPositionName = "TargetPos"}
  },
  {
    Function = BBSpellEffectRemove,
    Params = {
      EffectIDVar = "GateParticle2",
      EffectIDVarTable = "InstanceVars"
    }
  },
  {
    Function = BBSpellEffectRemove,
    Params = {
      EffectIDVar = "GateParticle",
      EffectIDVarTable = "InstanceVars"
    }
  },
  {
    Function = BBSpellEffectRemove,
    Params = {
      EffectIDVar = "Particle3",
      EffectIDVarTable = "InstanceVars"
    }
  },
  {
    Function = BBSpellEffectRemove,
    Params = {
      EffectIDVar = "Particle4",
      EffectIDVarTable = "InstanceVars"
    }
  },
  {
    Function = BBGetTeamID,
    Params = {
      TargetVar = "Owner",
      DestVar = "TeamOfOwner"
    }
  },
  {
    Function = BBSetStatus,
    Params = {
      TargetVar = "Owner",
      SrcValue = true,
      Status = SetCanMove
    }
  },
  {
    Function = BBSetStatus,
    Params = {
      TargetVar = "Owner",
      SrcValue = true,
      Status = SetCanAttack
    }
  }
}
BuffOnUpdateStatsBuildingBlocks = {
  {
    Function = BBSetStatus,
    Params = {
      TargetVar = "Owner",
      SrcValue = false,
      Status = SetCanAttack
    }
  },
  {
    Function = BBSetStatus,
    Params = {
      TargetVar = "Owner",
      SrcValue = false,
      Status = SetCanMove
    }
  }
}
SelfExecuteBuildingBlocks = {
  {
    Function = BBGetCastSpellTargetPos,
    Params = {DestVar = "TargetPos"}
  },
  {
    Function = BBIfHasBuff,
    Params = {
      OwnerVar = "Owner",
      AttackerVar = "Owner",
      BuffName = "Destiny_marker"
    },
    SubBlocks = {
      {
        Function = BBGetTeamID,
        Params = {
          TargetVar = "Owner",
          DestVar = "TeamOfOwner"
        }
      },
      {
        Function = BBIf,
        Params = {
          Src1Var = "TeamOfOwner",
          Value2 = TEAM_ORDER,
          CompareOp = CO_EQUAL
        },
        SubBlocks = {
          {
            Function = BBSpellEffectCreate,
            Params = {
              BindObjectVar = "Nothing",
              PosVar = "TargetPos",
              EffectName = "GateMarker_red.troy",
              Flags = 0,
              EffectIDVar = "GateParticle",
              EffectIDVarTable = "InstanceVars",
              TargetObjectVar = "Target",
              SpecificUnitOnlyVar = "Nothing",
              SpecificTeamOnly = TEAM_CHAOS,
              UseSpecificUnit = true,
              FOWTeam = TEAM_CHAOS,
              FOWVisibilityRadius = 200,
              SendIfOnScreenOrDiscard = false
            }
          },
          {
            Function = BBSpellEffectCreate,
            Params = {
              BindObjectVar = "Nothing",
              PosVar = "TargetPos",
              EffectName = "GateMarker_green.troy",
              Flags = 0,
              EffectIDVar = "GateParticle2",
              EffectIDVarTable = "InstanceVars",
              TargetObjectVar = "Target",
              SpecificUnitOnlyVar = "Nothing",
              SpecificTeamOnly = TEAM_ORDER,
              UseSpecificUnit = true,
              FOWTeam = TEAM_ORDER,
              FOWVisibilityRadius = 200,
              SendIfOnScreenOrDiscard = false
            }
          }
        }
      },
      {
        Function = BBElse,
        Params = {},
        SubBlocks = {
          {
            Function = BBSpellEffectCreate,
            Params = {
              BindObjectVar = "Nothing",
              PosVar = "TargetPos",
              EffectName = "GateMarker_red.troy",
              Flags = 0,
              EffectIDVar = "GateParticle",
              EffectIDVarTable = "InstanceVars",
              TargetObjectVar = "Target",
              SpecificUnitOnlyVar = "Nothing",
              SpecificTeamOnly = TEAM_ORDER,
              UseSpecificUnit = true,
              FOWTeam = TEAM_ORDER,
              FOWVisibilityRadius = 200,
              SendIfOnScreenOrDiscard = false
            }
          },
          {
            Function = BBSpellEffectCreate,
            Params = {
              BindObjectVar = "Nothing",
              PosVar = "TargetPos",
              EffectName = "GateMarker_green.troy",
              Flags = 0,
              EffectIDVar = "GateParticle2",
              EffectIDVarTable = "InstanceVars",
              TargetObjectVar = "Target",
              SpecificUnitOnlyVar = "Nothing",
              SpecificTeamOnly = TEAM_CHAOS,
              UseSpecificUnit = true,
              FOWTeam = TEAM_CHAOS,
              FOWVisibilityRadius = 200,
              SendIfOnScreenOrDiscard = false
            }
          }
        }
      },
      {
        Function = BBSetVarInTable,
        Params = {
          DestVar = "GateParticle",
          DestVarTable = "NextBuffVars",
          SrcVar = "GateParticle",
          SrcVarTable = "InstanceVars"
        }
      },
      {
        Function = BBSetVarInTable,
        Params = {
          DestVar = "GateParticle2",
          DestVarTable = "NextBuffVars",
          SrcVar = "GateParticle2",
          SrcVarTable = "InstanceVars"
        }
      },
      {
        Function = BBSetVarInTable,
        Params = {
          DestVar = "TargetPos",
          DestVarTable = "NextBuffVars",
          SrcVar = "TargetPos"
        }
      },
      {
        Function = BBSpellBuffAdd,
        Params = {
          TargetVar = "Owner",
          AttackerVar = "Owner",
          BuffAddType = BUFF_REPLACE_EXISTING,
          StacksExclusive = true,
          BuffType = BUFF_CombatEnchancer,
          MaxStack = 1,
          NumberOfStacks = 1,
          Duration = 1.5,
          BuffVarsTable = "NextBuffVars",
          TickRate = 0
        }
      }
    }
  },
  {
    Function = BBElse,
    Params = {},
    SubBlocks = {
      {
        Function = BBSpellCast,
        Params = {
          CasterVar = "Owner",
          TargetVar = "Owner",
          PosVar = "TargetPos",
          EndPosVar = "TargetPos",
          OverrideCastPosition = false,
          SlotNumber = 1,
          SlotType = ExtraSlots,
          OverrideForceLevel = 0,
          OverrideForceLevelVar = "Level",
          OverrideCoolDownCheck = true,
          FireWithoutCasting = false,
          UseAutoAttackSpell = false,
          ForceCastingOrChannelling = false
        }
      }
    }
  },
  {
    Function = BBGetTeamID,
    Params = {TargetVar = "Owner", DestVar = "TeamID"}
  }
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "cardmasterteleport_red.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "cardmasterteleport_green.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "destiny_marker"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "gatemarker_red.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "gatemarker_green.troy"
    }
  }
}
