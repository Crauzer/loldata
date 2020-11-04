BuffTextureName = "Heimerdinger_UPGRADE.dds"
BuffName = "UpgradeSlow"
AutoBuffActivateEffect = ""
OnBuffActivateBuildingBlocks = {
  {
    Function = BBGetTeamID,
    Params = {TargetVar = "Owner", DestVar = "TeamID"}
  },
  {
    Function = BBSpellEffectCreate,
    Params = {
      BindObjectVar = "Owner",
      EffectName = "heimerdinger_slowAura_self.troy",
      Flags = 0,
      EffectIDVar = "FrostTurrets",
      EffectIDVarTable = "InstanceVars",
      TargetObjectVar = "Owner",
      SpecificUnitOnlyVar = "Owner",
      SpecificTeamOnly = TEAM_UNKNOWN,
      UseSpecificUnit = false,
      FOWTeam = TEAM_UNKNOWN,
      FOWTeamOverrideVar = "TeamID",
      FOWVisibilityRadius = 10,
      SendIfOnScreenOrDiscard = true
    }
  },
  {
    Function = BBApplyStun,
    Params = {
      AttackerVar = "Attacker",
      TargetVar = "Owner",
      Duration = 0.1
    }
  },
  {
    Function = BBIfHasBuff,
    Params = {
      OwnerVar = "Owner",
      AttackerVar = "Attacker",
      BuffName = "ExplosiveCartridges"
    },
    SubBlocks = {
      {
        Function = BBPushCharacterData,
        Params = {
          SkinName = "H28RedFrost",
          TargetVar = "Owner",
          IDVar = "RedShift",
          IDVarTable = "InstanceVars",
          OverrideSpells = true
        }
      }
    }
  },
  {
    Function = BBIfHasBuff,
    Params = {
      OwnerVar = "Owner",
      AttackerVar = "Attacker",
      BuffName = "UraniumRounds"
    },
    SubBlocks = {
      {
        Function = BBPushCharacterData,
        Params = {
          SkinName = "H28RedFrost",
          TargetVar = "Owner",
          IDVar = "RedShift",
          IDVarTable = "InstanceVars",
          OverrideSpells = true
        }
      }
    }
  },
  {
    Function = BBElse,
    Params = {},
    SubBlocks = {
      {
        Function = BBIfNotHasBuff,
        Params = {
          OwnerVar = "Owner",
          CasterVar = "Attacker",
          BuffName = "ExplosiveCartridges"
        },
        SubBlocks = {
          {
            Function = BBPushCharacterData,
            Params = {
              SkinName = "H28RedFrost",
              TargetVar = "Owner",
              IDVar = "RedShift",
              IDVarTable = "InstanceVars",
              OverrideSpells = true
            }
          }
        }
      }
    }
  }
}
OnBuffDeactivateBuildingBlocks = {
  {
    Function = BBPopCharacterData,
    Params = {
      TargetVar = "Owner",
      IDVar = "RedShift",
      IDVarTable = "InstanceVars"
    }
  },
  {
    Function = BBApplyStun,
    Params = {
      AttackerVar = "Attacker",
      TargetVar = "Owner",
      Duration = 0.1
    }
  },
  {
    Function = BBSpellEffectRemove,
    Params = {
      EffectIDVar = "FrostTurrets",
      EffectIDVarTable = "InstanceVars"
    }
  }
}
BuffOnSpellHitBuildingBlocks = {
  {
    Function = BBGetTeamID,
    Params = {TargetVar = "Owner", DestVar = "teamID"}
  },
  {
    Function = BBGetChampionBySkinName,
    Params = {
      Skin = "Heimerdinger",
      Team = TEAM_UNKNOWN,
      TeamVar = "teamID",
      DestVar = "Attacker"
    }
  },
  {
    Function = BBGetSlotSpellInfo,
    Params = {
      DestVar = "Level",
      SpellSlotValue = 3,
      SpellbookType = SPELLBOOK_CHAMPION,
      SlotType = SpellSlots,
      OwnerVar = "Attacker",
      Function = GetSlotSpellLevel
    }
  },
  {
    Function = BBSetVarInTable,
    Params = {
      DestVar = "MovementSpeedMod",
      DestVarTable = "NextBuffVars",
      SrcValue = 0,
      SrcValueByLevel = {
        -0.2,
        -0.25,
        -0.3
      }
    }
  },
  {
    Function = BBSetVarInTable,
    Params = {
      DestVar = "AttackSpeedMod",
      DestVarTable = "NextBuffVars",
      SrcValue = 0
    }
  },
  {
    Function = BBSpellBuffAdd,
    Params = {
      TargetVar = "Target",
      AttackerVar = "Attacker",
      BuffName = "Chilled",
      BuffAddType = BUFF_STACKS_AND_OVERLAPS,
      StacksExclusive = true,
      BuffType = BUFF_Slow,
      MaxStack = 100,
      NumberOfStacks = 1,
      Duration = 2,
      BuffVarsTable = "NextBuffVars",
      TickRate = 0,
      CanMitigateDuration = false
    }
  }
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "heimerdinger_slowaura_self.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "explosivecartridges"
    }
  },
  {
    Function = BBPreloadCharacter,
    Params = {
      Name = "h28redfrost"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "uraniumrounds"
    }
  },
  {
    Function = BBPreloadCharacter,
    Params = {
      Name = "heimerdinger"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "chilled"}
  }
}
