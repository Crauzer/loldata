BuffTextureName = "Pirate_GrogSoakedBlade.dds"
BuffName = "ScurvyStrike"
AutoBuffActivateEffect = "Global_Mortal_Strike.troy"
AutoBuffActivateAttachBoneName = "head"
OnBuffActivateBuildingBlocks = {
  {
    Function = BBRequireVar,
    Params = {
      RequiredVar = "DotDamage",
      RequiredVarTable = "InstanceVars"
    }
  }
}
BuffOnUpdateActionsBuildingBlocks = {
  {
    Function = BBExecutePeriodically,
    Params = {
      TimeBetweenExecutions = 1,
      TrackTimeVar = "LastTimeExecuted",
      TrackTimeVarTable = "InstanceVars",
      ExecuteImmediately = false
    },
    SubBlocks = {
      {
        Function = BBApplyDamage,
        Params = {
          AttackerVar = "Attacker",
          TargetVar = "Owner",
          Damage = 0,
          DamageVar = "DotDamage",
          DamageVarTable = "InstanceVars",
          DamageType = MAGIC_DAMAGE,
          SourceDamageType = DAMAGESOURCE_PERIODIC,
          PercentOfAttack = 1,
          SpellDamageRatio = 0
        }
      }
    }
  }
}
BuffOnHealBuildingBlocks = {
  {
    Function = BBMath,
    Params = {
      Src1Var = "Health",
      Src1Value = 0,
      Src2Value = 0.6,
      DestVar = "EffectiveHeal",
      MathOp = MO_MULTIPLY
    }
  },
  {
    Function = BBSetReturnValue,
    Params = {
      SrcVar = "EffectiveHeal"
    }
  }
}
