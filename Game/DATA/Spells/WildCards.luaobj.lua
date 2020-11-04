NotSingleTargetSpell = false
DoesntTriggerSpellCasts = false
BuffTextureName = "Cardmaster_PowerCard.dds"
BuffName = "Wild Cards"
AutoBuffActivateEffect = "SealFate_tar.prt"
AutoBuffActivateEffect2 = "GLOBAL_SILENCE.TROY"
AutoBuffActivateAttachBoneName2 = "head"
NonDispellable = true
BuffOnSpellHitBuildingBlocks = {
  {
    Function = BBSetBuffCasterUnit,
    Params = {CasterVar = "Attacker"}
  },
  {
    Function = BBIfHasBuff,
    Params = {
      OwnerVar = "Target",
      AttackerVar = "Attacker",
      BuffName = "SealFateMissile"
    }
  },
  {
    Function = BBElse,
    Params = {},
    SubBlocks = {
      {
        Function = BBSpellBuffAdd,
        Params = {
          TargetVar = "Target",
          AttackerVar = "Attacker",
          BuffName = "SealFateMissile",
          BuffAddType = BUFF_REPLACE_EXISTING,
          BuffType = BUFF_Internal,
          MaxStack = 1,
          NumberStacks = 1,
          Duration = 1,
          BuffVarsTable = "NextBuffVars",
          TickRate = 0
        }
      },
      {
        Function = BBBreakSpellShields,
        Params = {TargetVar = "Target"}
      },
      {
        Function = BBGetSlotSpellInfo,
        Params = {
          DestVar = "Level",
          SpellSlotValue = 0,
          SpellbookType = SPELLBOOK_CHAMPION,
          SlotType = SpellSlots,
          OwnerVar = "Attacker",
          Function = GetSlotSpellLevel
        }
      },
      {
        Function = BBApplyDamage,
        Params = {
          AttackerVar = "Attacker",
          TargetVar = "Target",
          DamageByLevel = {
            60,
            110,
            160,
            210,
            260
          },
          Damage = 0,
          DamageType = MAGIC_DAMAGE,
          SourceDamageType = DAMAGESOURCE_SPELLAOE,
          PercentOfAttack = 1,
          SpellDamageRatio = 0.75,
          IgnoreDamageIncreaseMods = false,
          IgnoreDamageCrit = false
        }
      }
    }
  }
}
SelfExecuteBuildingBlocks = {
  {
    Function = BBStopChanneling,
    Params = {
      CasterVar = "Owner",
      StopCondition = ChannelingStopCondition_NotCancelled,
      StopSource = ChannelingStopSource_NotCancelled
    }
  },
  {
    Function = BBGetTeamID,
    Params = {TargetVar = "Owner", DestVar = "TeamID"}
  },
  {
    Function = BBGetPointByUnitFacingOffset,
    Params = {
      UnitVar = "Owner",
      Distance = 30,
      OffsetAngle = 0,
      PositionVar = "Pos"
    }
  },
  {
    Function = BBGetPointByUnitFacingOffset,
    Params = {
      UnitVar = "Owner",
      Distance = 1000,
      OffsetAngle = 0,
      PositionVar = "Pos1"
    }
  },
  {
    Function = BBSpawnMinion,
    Params = {
      Name = "TestCube",
      Skin = "TestCubeRender",
      AiScript = "idle.lua",
      PosVar = "Pos",
      Team = TEAM_CASTER,
      TeamVar = "TeamID",
      Stunned = false,
      Rooted = true,
      Silenced = false,
      Invulnerable = true,
      MagicImmune = false,
      IgnoreCollision = true,
      VisibilitySize = 0,
      DestVar = "Other1",
      GoldRedirectTargetVar = "Owner"
    }
  },
  {
    Function = BBGetPointByUnitFacingOffset,
    Params = {
      UnitVar = "Owner",
      Distance = 1000,
      OffsetAngle = -28,
      PositionVar = "Pos2"
    }
  },
  {
    Function = BBGetPointByUnitFacingOffset,
    Params = {
      UnitVar = "Owner",
      Distance = 1000,
      OffsetAngle = 28,
      PositionVar = "Pos3"
    }
  },
  {
    Function = BBSpellCast,
    Params = {
      CasterVar = "Other1",
      TargetVar = "Nothing",
      PosVar = "Pos1",
      EndPosVar = "Pos1",
      SlotNumber = 2,
      SlotType = ExtraSlots,
      OverrideForceLevel = 0,
      OverrideForceLevelVar = "Level",
      OverrideCoolDownCheck = true,
      FireWithoutCasting = true,
      UseAutoAttackSpell = false
    }
  },
  {
    Function = BBSpellCast,
    Params = {
      CasterVar = "Other1",
      TargetVar = "Nothing",
      PosVar = "Pos2",
      EndPosVar = "Pos2",
      SlotNumber = 2,
      SlotType = ExtraSlots,
      OverrideForceLevel = 0,
      OverrideForceLevelVar = "Level",
      OverrideCoolDownCheck = true,
      FireWithoutCasting = true,
      UseAutoAttackSpell = false
    }
  },
  {
    Function = BBSpellCast,
    Params = {
      CasterVar = "Other1",
      TargetVar = "Nothing",
      PosVar = "Pos3",
      EndPosVar = "Pos3",
      SlotNumber = 2,
      SlotType = ExtraSlots,
      OverrideForceLevel = 0,
      OverrideForceLevelVar = "Level",
      OverrideCoolDownCheck = true,
      FireWithoutCasting = true,
      UseAutoAttackSpell = false
    }
  },
  {
    Function = BBSpellBuffAdd,
    Params = {
      TargetVar = "Other1",
      AttackerVar = "Attacker",
      BuffAddType = BUFF_REPLACE_EXISTING,
      BuffType = BUFF_Internal,
      MaxStack = 1,
      NumberStacks = 1,
      Duration = 5,
      BuffVarsTable = "NextBuffVars",
      TickRate = 6
    }
  },
  {
    Function = BBSpellBuffAdd,
    Params = {
      TargetVar = "Other1",
      AttackerVar = "Attacker",
      BuffName = "ExpirationTimer",
      BuffAddType = BUFF_REPLACE_EXISTING,
      BuffType = BUFF_Internal,
      MaxStack = 1,
      NumberStacks = 1,
      Duration = 5,
      BuffVarsTable = "NextBuffVars",
      TickRate = 6
    }
  }
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "sealfatemissile"
    }
  },
  {
    Function = BBPreloadCharacter,
    Params = {Name = "testcube"}
  },
  {
    Function = BBPreloadCharacter,
    Params = {
      Name = "testcuberender"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "expirationtimer"
    }
  }
}
