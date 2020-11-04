NotSingleTargetSpell = true
DoesntBreakShields = true
DoesntTriggerSpellCasts = false
CastingBreaksStealth = true
IsDamagingSpell = false
BuffTextureName = "OlafViciousStrikes.dds"
BuffName = "OlafFrenziedStrikes"
AutoBuffActivateEffect = "olaf_viciousStrikes_self.troy"
AutoBuffActivateAttachBoneName = "l_hand"
AutoBuffActivateEffect2 = "olaf_viciousStrikes_self.troy"
AutoBuffActivateAttachBoneName2 = "r_hand"
AutoBuffActivateEffect3 = "olaf_viciousStrikes_axes_blood.troy"
AutoBuffActivateAttachBoneName3 = "BUFFBONE_WEAPON_L_1"
AutoBuffActivateEffect4 = "olaf_viciousStrikes_axes_blood.troy"
AutoBuffActivateAttachBoneName4 = "BUFFBONE_WEAPON_R_1"
PersistsThroughDeath = true
NonDispellable = true
OnBuffActivateBuildingBlocks = {
  {
    Function = BBSpellEffectCreate,
    Params = {
      BindObjectVar = "Owner",
      EffectName = "olaf_viciousStrikes_weapon_glow.troy",
      Flags = 0,
      EffectIDVar = "ParticleID",
      EffectIDVarTable = "InstanceVars",
      BoneName = "BUFFBONE_WEAPON_R_2",
      TargetObjectVar = "Owner",
      TargetBoneName = "BUFFBONE_WEAPON_R_4",
      SpecificUnitOnlyVar = "Owner",
      SpecificTeamOnly = TEAM_UNKNOWN,
      UseSpecificUnit = false,
      FOWTeam = TEAM_UNKNOWN,
      FOWVisibilityRadius = 0,
      SendIfOnScreenOrDiscard = false
    }
  },
  {
    Function = BBSpellEffectCreate,
    Params = {
      BindObjectVar = "Owner",
      EffectName = "olaf_viciousStrikes_weapon_glow.troy",
      Flags = 0,
      EffectIDVar = "Particle2",
      EffectIDVarTable = "InstanceVars",
      BoneName = "BUFFBONE_WEAPON_L_2",
      TargetObjectVar = "Owner",
      TargetBoneName = "BUFFBONE_WEAPON_L_4",
      SpecificUnitOnlyVar = "Owner",
      SpecificTeamOnly = TEAM_UNKNOWN,
      UseSpecificUnit = false,
      FOWTeam = TEAM_UNKNOWN,
      FOWVisibilityRadius = 0,
      SendIfOnScreenOrDiscard = false
    }
  },
  {
    Function = BBRequireVar,
    Params = {
      RequiredVar = "DamageGain",
      RequiredVarTable = "InstanceVars"
    }
  },
  {
    Function = BBRequireVar,
    Params = {
      RequiredVar = "LifestealStat",
      RequiredVarTable = "InstanceVars"
    }
  }
}
BuffOnUpdateStatsBuildingBlocks = {
  {
    Function = BBIncStat,
    Params = {
      Stat = IncFlatPhysicalDamageMod,
      TargetVar = "Owner",
      DeltaVar = "DamageGain",
      DeltaVarTable = "InstanceVars",
      Delta = 0
    }
  },
  {
    Function = BBIncStat,
    Params = {
      Stat = IncPercentLifeStealMod,
      TargetVar = "Owner",
      DeltaVar = "LifestealStat",
      DeltaVarTable = "InstanceVars",
      Delta = 0
    }
  },
  {
    Function = BBIncStat,
    Params = {
      Stat = IncPercentSpellVampMod,
      TargetVar = "Owner",
      DeltaVar = "LifestealStat",
      DeltaVarTable = "InstanceVars",
      Delta = 0
    }
  }
}
BuffOnHitUnitBuildingBlocks = {
  {
    Function = BBSpellEffectCreate,
    Params = {
      BindObjectVar = "Owner",
      EffectName = "olaf_viciousStrikes_heal.troy",
      Flags = 0,
      EffectIDVar = "HealParticle",
      TargetObjectVar = "Owner",
      SpecificUnitOnlyVar = "Owner",
      SpecificTeamOnly = TEAM_UNKNOWN,
      UseSpecificUnit = false,
      FOWTeam = TEAM_UNKNOWN,
      FOWVisibilityRadius = 0,
      SendIfOnScreenOrDiscard = true
    }
  }
}
SelfExecuteBuildingBlocks = {
  {
    Function = BBGetPAROrHealth,
    Params = {
      DestVar = "MaxHealth",
      OwnerVar = "Owner",
      Function = GetMaxHealth,
      PARType = PAR_MANA
    }
  },
  {
    Function = BBSetVarInTable,
    Params = {
      DestVar = "HealthPercent",
      SrcValueByLevel = {
        0.004,
        0.007,
        0.01,
        0.013,
        0.016
      }
    }
  },
  {
    Function = BBSetVarInTable,
    Params = {
      DestVar = "BaseDamage",
      SrcValueByLevel = {
        12,
        18,
        24,
        30,
        36
      }
    }
  },
  {
    Function = BBSetVarInTable,
    Params = {
      DestVar = "LifestealStat",
      DestVarTable = "NextBuffVars",
      SrcValueByLevel = {
        0.09,
        0.12,
        0.15,
        0.18,
        0.21
      }
    }
  },
  {
    Function = BBMath,
    Params = {
      Src1Var = "HealthPercent",
      Src2Var = "MaxHealth",
      Src1Value = 0,
      Src2Value = 0,
      DestVar = "HealthDamage",
      MathOp = MO_MULTIPLY
    }
  },
  {
    Function = BBMath,
    Params = {
      Src1Var = "HealthDamage",
      Src2Var = "BaseDamage",
      Src1Value = 0,
      Src2Value = 0,
      DestVar = "DamageGain",
      DestVarTable = "NextBuffVars",
      MathOp = MO_ADD
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
      Duration = 6,
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
      Name = "olaf_viciousstrikes_weapon_glow.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "olaf_viciousstrikes_heal.troy"
    }
  }
}
