BuffTextureName = "Sivir_Sprint.dds"
BuffName = "Fleet of Foot"
PersistsThroughDeath = true
Nondispellable = true
OnBuffActivateBuildingBlocks = {
  {
    Function = BBSetVarInTable,
    Params = {
      DestVar = "lastTooltip",
      DestVarTable = "InstanceVars",
      SrcValue = 0
    }
  }
}
BuffOnUpdateActionsBuildingBlocks = {
  {
    Function = BBExecutePeriodically,
    Params = {
      TimeBetweenExecutions = 10,
      TrackTimeVar = "LastTimeExecuted",
      TrackTimeVarTable = "InstanceVars",
      ExecuteImmediately = true
    },
    SubBlocks = {
      {
        Function = BBGetLevel,
        Params = {TargetVar = "Owner", DestVar = "Level"}
      },
      {
        Function = BBSetVarInTable,
        Params = {
          DestVar = "tooltipAmount",
          SrcValueByLevel = {
            0.1,
            0.1,
            0.1,
            0.1,
            0.1,
            0.15,
            0.15,
            0.15,
            0.15,
            0.15,
            0.2,
            0.2,
            0.2,
            0.2,
            0.2,
            0.25,
            0.25,
            0.25,
            0.25,
            0.25
          }
        }
      },
      {
        Function = BBIf,
        Params = {
          Src1Var = "tooltipAmount",
          Src2Var = "lastTooltip",
          Src2VarTable = "InstanceVars",
          CompareOp = CO_GREATER_THAN
        },
        SubBlocks = {
          {
            Function = BBSetVarInTable,
            Params = {
              DestVar = "lastTooltip",
              DestVarTable = "InstanceVars",
              SrcVar = "tooltipAmount"
            }
          },
          {
            Function = BBMath,
            Params = {
              Src2Var = "tooltipAmount",
              Src1Value = 100,
              Src2Value = 0,
              DestVar = "tooltipAmount",
              MathOp = MO_MULTIPLY
            }
          },
          {
            Function = BBSetBuffToolTipVar,
            Params = {
              Value = 0,
              ValueVar = "tooltipAmount",
              Index = 1
            }
          }
        }
      }
    }
  }
}
