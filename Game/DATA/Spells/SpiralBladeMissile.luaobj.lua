NotSingleTargetSpell = true
DoesntTriggerSpellCasts = false
CastingBreaksStealth = true
IsDamagingSpell = true
SpellDamageRatio = 0.5
TargetExecuteBuildingBlocks = {
  {
    Function = BBGetTeamID,
    Params = {TargetVar = "Owner", DestVar = "TeamID"}
  },
  {
    Function = BBSetVarInTable,
    Params = {
      DestVar = "percentOfAttack",
      SrcVar = "percentOfAttack",
      SrcVarTable = "CharVars"
    }
  },
  {
    Function = BBApplyDamage,
    Params = {
      AttackerVar = "Attacker",
      CallForHelpAttackerVar = "Attacker",
      TargetVar = "Target",
      DamageByLevel = {
        60,
        115,
        170,
        225,
        280
      },
      Damage = 0,
      DamageType = MAGIC_DAMAGE,
      SourceDamageType = DAMAGESOURCE_SPELLAOE,
      PercentOfAttack = 0,
      PercentOfAttackVar = "percentOfAttack",
      SpellDamageRatio = 0.75,
      PhysicalDamageRatio = 1,
      IgnoreDamageIncreaseMods = false,
      IgnoreDamageCrit = false
    }
  },
  {
    Function = BBMath,
    Params = {
      Src1Var = "percentOfAttack",
      Src1VarTable = "CharVars",
      Src1Value = 0,
      Src2Value = 0.9,
      DestVar = "percentOfAttack",
      DestVarTable = "CharVars",
      MathOp = MO_MULTIPLY
    }
  },
  {
    Function = BBMath,
    Params = {
      Src1Var = "percentOfAttack",
      Src1VarTable = "CharVars",
      Src1Value = 0,
      Src2Value = 0.4,
      DestVar = "percentOfAttack",
      DestVarTable = "CharVars",
      MathOp = MO_MAX
    }
  },
  {
    Function = BBSpellEffectCreate,
    Params = {
      BindObjectVar = "Target",
      EffectName = "SpiralBlade_tar.troy",
      Flags = 0,
      EffectIDVar = "afa",
      BoneName = "spine",
      TargetObjectVar = "Target",
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
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "spiralblade_tar.troy"
    }
  }
}
