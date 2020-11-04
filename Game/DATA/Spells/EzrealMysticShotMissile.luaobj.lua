NotSingleTargetSpell = false
DoesntTriggerSpellCasts = false
IsDamagingSpell = true
BuffTextureName = "FallenAngel_DarkBinding.dds"
BuffName = "Dark Binding"
AutoBuffActivateEffect = "DarkBinding_tar.troy"
AutoBuffActivateEffect2 = ""
PopupMessage1 = "game_floatingtext_Snared"
TargetExecuteBuildingBlocks = {
  {
    Function = BBSpellBuffAdd,
    Params = {
      TargetVar = "Attacker",
      AttackerVar = "Attacker",
      BuffName = "EzrealRisingSpellForce",
      BuffAddType = BUFF_STACKS_AND_RENEWS,
      StacksExclusive = true,
      BuffType = BUFF_CombatEnchancer,
      MaxStack = 5,
      NumberOfStacks = 1,
      Duration = 6,
      BuffVarsTable = "NextBuffVars",
      DurationByLevel = {
        0,
        0,
        0,
        0,
        0
      },
      TickRate = 0,
      CanMitigateDuration = false
    }
  },
  {
    Function = BBGetSlotSpellInfo,
    Params = {
      DestVar = "cooldown",
      SpellSlotValue = 0,
      SpellbookType = SPELLBOOK_CHAMPION,
      SlotType = SpellSlots,
      OwnerVar = "Attacker",
      Function = GetSlotSpellCooldownTime
    }
  },
  {
    Function = BBGetSlotSpellInfo,
    Params = {
      DestVar = "cooldown1",
      SpellSlotValue = 1,
      SpellbookType = SPELLBOOK_CHAMPION,
      SlotType = SpellSlots,
      OwnerVar = "Attacker",
      Function = GetSlotSpellCooldownTime
    }
  },
  {
    Function = BBGetSlotSpellInfo,
    Params = {
      DestVar = "cooldown2",
      SpellSlotValue = 2,
      SpellbookType = SPELLBOOK_CHAMPION,
      SlotType = SpellSlots,
      OwnerVar = "Attacker",
      Function = GetSlotSpellCooldownTime
    }
  },
  {
    Function = BBGetSlotSpellInfo,
    Params = {
      DestVar = "cooldown3",
      SpellSlotValue = 3,
      SpellbookType = SPELLBOOK_CHAMPION,
      SlotType = SpellSlots,
      OwnerVar = "Attacker",
      Function = GetSlotSpellCooldownTime
    }
  },
  {
    Function = BBIf,
    Params = {
      Src1Var = "cooldown",
      Value2 = 0,
      CompareOp = CO_GREATER_THAN
    },
    SubBlocks = {
      {
        Function = BBMath,
        Params = {
          Src1Var = "cooldown",
          Src1Value = 0,
          Src2Value = 1,
          DestVar = "newCooldown",
          MathOp = MO_SUBTRACT
        }
      },
      {
        Function = BBSetSlotSpellCooldownTimeVer2,
        Params = {
          Src = 0,
          SrcVar = "newCooldown",
          SlotNumber = 0,
          SlotType = SpellSlots,
          SpellbookType = SPELLBOOK_CHAMPION,
          OwnerVar = "Attacker"
        }
      }
    }
  },
  {
    Function = BBIf,
    Params = {
      Src1Var = "cooldown1",
      Value2 = 0,
      CompareOp = CO_GREATER_THAN
    },
    SubBlocks = {
      {
        Function = BBMath,
        Params = {
          Src1Var = "cooldown1",
          Src1Value = 0,
          Src2Value = 1,
          DestVar = "newCooldown1",
          MathOp = MO_SUBTRACT
        }
      },
      {
        Function = BBSetSlotSpellCooldownTimeVer2,
        Params = {
          Src = 0,
          SrcVar = "newCooldown1",
          SlotNumber = 1,
          SlotType = SpellSlots,
          SpellbookType = SPELLBOOK_CHAMPION,
          OwnerVar = "Attacker"
        }
      }
    }
  },
  {
    Function = BBIf,
    Params = {
      Src1Var = "cooldown2",
      Value2 = 0,
      CompareOp = CO_GREATER_THAN
    },
    SubBlocks = {
      {
        Function = BBMath,
        Params = {
          Src1Var = "cooldown2",
          Src1Value = 0,
          Src2Value = 1,
          DestVar = "newCooldown2",
          MathOp = MO_SUBTRACT
        }
      },
      {
        Function = BBSetSlotSpellCooldownTimeVer2,
        Params = {
          Src = 0,
          SrcVar = "newCooldown2",
          SlotNumber = 2,
          SlotType = SpellSlots,
          SpellbookType = SPELLBOOK_CHAMPION,
          OwnerVar = "Attacker"
        }
      }
    }
  },
  {
    Function = BBIf,
    Params = {
      Src1Var = "cooldown3",
      Value2 = 0,
      CompareOp = CO_GREATER_THAN
    },
    SubBlocks = {
      {
        Function = BBMath,
        Params = {
          Src1Var = "cooldown3",
          Src1Value = 0,
          Src2Value = 1,
          DestVar = "newCooldown3",
          MathOp = MO_SUBTRACT
        }
      },
      {
        Function = BBSetSlotSpellCooldownTimeVer2,
        Params = {
          Src = 0,
          SrcVar = "newCooldown3",
          SlotNumber = 3,
          SlotType = SpellSlots,
          SpellbookType = SPELLBOOK_CHAMPION,
          OwnerVar = "Attacker"
        }
      }
    }
  },
  {
    Function = BBSetVarInTable,
    Params = {
      DestVar = "SpellBaseDamage",
      SrcValueByLevel = {
        40,
        65,
        90,
        115,
        140
      }
    }
  },
  {
    Function = BBGetTotalAttackDamage,
    Params = {TargetVar = "Owner", DestVar = "BaseDamage"}
  },
  {
    Function = BBMath,
    Params = {
      Src2Var = "BaseDamage",
      Src1Value = 1.1,
      Src2Value = 0,
      DestVar = "AttackDamage",
      MathOp = MO_MULTIPLY
    }
  },
  {
    Function = BBMath,
    Params = {
      Src1Var = "SpellBaseDamage",
      Src2Var = "AttackDamage",
      Src1Value = 0,
      Src2Value = 0,
      DestVar = "DamageVar",
      MathOp = MO_ADD
    }
  },
  {
    Function = BBGetStatus,
    Params = {
      TargetVar = "Target",
      DestVar = "IsStealthed",
      Status = GetStealthed
    }
  },
  {
    Function = BBIf,
    Params = {
      Src1Var = "IsStealthed",
      Value2 = false,
      CompareOp = CO_EQUAL
    },
    SubBlocks = {
      {
        Function = BBApplyDamage,
        Params = {
          AttackerVar = "Attacker",
          TargetVar = "Target",
          Damage = 0,
          DamageVar = "DamageVar",
          DamageType = PHYSICAL_DAMAGE,
          SourceDamageType = DAMAGESOURCE_ATTACK,
          PercentOfAttack = 1,
          SpellDamageRatio = 0,
          PhysicalDamageRatio = 0,
          IgnoreDamageIncreaseMods = false,
          IgnoreDamageCrit = false
        }
      },
      {
        Function = BBDestroyMissile,
        Params = {
          MissileIDVar = "MissileNetworkID"
        }
      }
    }
  },
  {
    Function = BBElse,
    Params = {},
    SubBlocks = {
      {
        Function = BBIf,
        Params = {Src1Var = "Target", CompareOp = CO_IS_TYPE_HERO},
        SubBlocks = {
          {
            Function = BBApplyDamage,
            Params = {
              AttackerVar = "Attacker",
              TargetVar = "Target",
              Damage = 0,
              DamageVar = "DamageVar",
              DamageType = PHYSICAL_DAMAGE,
              SourceDamageType = DAMAGESOURCE_ATTACK,
              PercentOfAttack = 1,
              SpellDamageRatio = 0,
              PhysicalDamageRatio = 0,
              IgnoreDamageIncreaseMods = false,
              IgnoreDamageCrit = false
            }
          },
          {
            Function = BBDestroyMissile,
            Params = {
              MissileIDVar = "MissileNetworkID"
            }
          }
        }
      },
      {
        Function = BBElse,
        Params = {},
        SubBlocks = {
          {
            Function = BBCanSeeTarget,
            Params = {
              ViewerVar = "Owner",
              TargetVar = "Target",
              ResultVar = "CanSee"
            }
          },
          {
            Function = BBIf,
            Params = {
              Src1Var = "CanSee",
              Value2 = true,
              CompareOp = CO_EQUAL
            },
            SubBlocks = {
              {
                Function = BBApplyDamage,
                Params = {
                  AttackerVar = "Attacker",
                  TargetVar = "Target",
                  Damage = 0,
                  DamageVar = "DamageVar",
                  DamageType = PHYSICAL_DAMAGE,
                  SourceDamageType = DAMAGESOURCE_ATTACK,
                  PercentOfAttack = 1,
                  SpellDamageRatio = 0,
                  PhysicalDamageRatio = 0,
                  IgnoreDamageIncreaseMods = false,
                  IgnoreDamageCrit = false
                }
              },
              {
                Function = BBDestroyMissile,
                Params = {
                  MissileIDVar = "MissileNetworkID"
                }
              }
            }
          }
        }
      }
    }
  }
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "ezrealrisingspellforce"
    }
  }
}
