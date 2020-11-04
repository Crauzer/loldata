local L0_0, L1_1
L0_0 = 2500
MAX_ENGAGE_DISTANCE = L0_0
L0_0 = 500
FEAR_WANDER_DISTANCE = L0_0
L0_0 = 0.25
DELAY_FIND_ENEMIES = L0_0
function L0_0()
  SetState(AI_IDLE)
  InitTimer("TimerFindEnemies", DELAY_FIND_ENEMIES, true)
  InitTimer("TimerMoveForward", 0, true)
  InitTimer("TimerAntiKite", 4, false)
  InitTimer("TimerFeared", 1, true)
  StopTimer("TimerAntiKite")
  StopTimer("TimerFeared")
  return false
end
OnInit = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  if GetState() == AI_ATTACKMOVE_ATTACKING or GetState() == AI_TAUNTED then
    FindTargetOrMove()
  end
end
OnTargetLost = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  if GetState() == AI_ATTACKMOVE_ATTACKING then
    AddToIgnore(0.1)
    FindTargetOrMove()
  end
end
OnPathToTargetBlocked = L0_0
function L0_0(A0_2, A1_3)
  if GetState() == AI_HALTED then
    return
  end
  if A1_3 and (GetState() == AI_ATTACKMOVESTATE or GetState() == AI_ATTACKMOVE_ATTACKING) then
    SetStateAndCloseToTarget(AI_ATTACKMOVE_ATTACKING, A1_3)
    ResetAndStartTimer("TimerAntiKite")
  end
end
OnCallForHelp = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  tauntTarget = GetTauntTarget()
  if tauntTarget ~= nil then
    SetStateAndCloseToTarget(AI_TAUNTED, tauntTarget)
    StopTimer("TimerAntiKite")
  end
end
OnTauntBegin = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  tauntTarget = GetTauntTarget()
  if tauntTarget ~= nil then
    SetStateAndCloseToTarget(AI_ATTACKMOVE_ATTACKING, tauntTarget)
    ResetAndStartTimer("TimerAntiKite")
  else
    FindTargetOrMove()
  end
end
OnTauntEnd = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  wanderPoint = MakeWanderPoint(GetFearLeashPoint(), FEAR_WANDER_DISTANCE)
  SetStateAndMove(AI_FEARED, wanderPoint)
  TurnOffAutoAttack(STOPREASON_IMMEDIATELY)
  ResetAndStartTimer("TimerFeared")
end
OnFearBegin = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  StopTimer("TimerFeared")
  FindTargetOrMove()
end
OnFearEnd = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  wanderPoint = MakeWanderPoint(GetFearLeashPoint(), FEAR_WANDER_DISTANCE)
  SetStateAndMove(AI_FEARED, wanderPoint)
end
TimerFeared = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  NetSetState(AI_IDLE)
  FindTargetOrMove()
end
OnCanMove = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  NetSetState(AI_IDLE)
  FindTargetOrMove()
end
OnCanAttack = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  if GetState() == AI_IDLE then
    FindTargetOrMove()
  elseif GetState() == AI_ATTACKMOVESTATE then
    SetStateAndMoveToForwardNav(AI_ATTACKMOVESTATE)
    LastAttackScan = 0
  end
end
TimerMoveForward = L0_0
function L0_0()
  local L0_4, L1_5
  L0_4 = GetState
  L0_4 = L0_4()
  L1_5 = AI_HALTED
  if L0_4 == L1_5 then
    return
  end
  L1_5 = AI_ATTACKMOVESTATE
  if L0_4 == L1_5 then
    L1_5 = FindTargetInAcR
    L1_5 = L1_5()
    if L1_5 == nil then
      TurnOffAutoAttack(STOPREASON_TARGET_LOST)
      return
    end
    SetStateAndCloseToTarget(AI_ATTACKMOVE_ATTACKING, L1_5)
    ResetAndStartTimer("TimerAntiKite")
  end
  L1_5 = AI_ATTACKMOVE_ATTACKING
  if L0_4 ~= L1_5 then
    L1_5 = AI_TAUNTED
  elseif L0_4 == L1_5 then
    L1_5 = GetTarget
    L1_5 = L1_5()
    if L1_5 ~= nil then
      L1_5 = DistanceBetweenMeAndObject
      L1_5 = L1_5(GetTarget())
    elseif L1_5 > MAX_ENGAGE_DISTANCE then
      L1_5 = FindTargetOrMove
      L1_5()
    end
    L1_5 = TargetInAttackRange
    L1_5 = L1_5()
    if L1_5 then
      L1_5 = AI_TAUNTED
      if L0_4 ~= L1_5 then
        L1_5 = ResetAndStartTimer
        L1_5("TimerAntiKite")
      end
      L1_5 = TurnOnAutoAttack
      L1_5(GetTarget())
    else
      L1_5 = TargetInCancelAttackRange
      L1_5 = L1_5()
      if L1_5 == false then
        L1_5 = TurnOffAutoAttack
        L1_5(STOPREASON_MOVING)
        L1_5 = 0
        LastAttackScan = L1_5
      end
    end
  end
end
TimerFindEnemies = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  if GetState() == AI_ATTACKMOVE_ATTACKING and IsMoving() then
    AddToIgnore(0.1)
    FindTargetOrMove()
  end
end
TimerAntiKite = L0_0
function L0_0()
  local L0_6, L1_7
  L0_6 = GetState
  L0_6 = L0_6()
  L1_7 = AI_HALTED
  if L0_6 == L1_7 then
    return
  end
  L1_7 = FindTargetInAcR
  L1_7 = L1_7()
  if L1_7 then
    if LastAutoAttackFinished() == false then
      InitTimer("TimerFindEnemies", DELAY_FIND_ENEMIES, true)
      return
    end
    SetStateAndCloseToTarget(AI_ATTACKMOVE_ATTACKING, L1_7)
    ResetAndStartTimer("TimerAntiKite")
  else
    SetStateAndMoveToForwardNav(AI_ATTACKMOVESTATE)
    StopTimer("TimerAntiKite")
    LastAttackScan = 0
  end
end
FindTargetOrMove = L0_0
function L0_0(A0_8)
  if GetState() == AI_HALTED then
    return
  end
  if GetState() ~= AI_TAUNTED and GetState() ~= AI_FEARED then
    SetStateAndCloseToTarget(AI_ATTACKMOVE_ATTACKING, A0_8)
    return false
  end
  return true
end
OnCollisionEnemy = L0_0
function L0_0(A0_9)
  local L1_10, L2_11
  L1_10 = GetState
  L1_10 = L1_10()
  L2_11 = AI_HALTED
  if L1_10 == L2_11 then
    return
  end
  L2_11 = AI_TAUNTED
  if L1_10 ~= L2_11 then
    L2_11 = AI_FEARED
    if L1_10 ~= L2_11 then
      L2_11 = FindTargetInAcR
      L2_11 = L2_11()
      if L2_11 ~= nil then
        SetStateAndCloseToTarget(AI_ATTACKMOVE_ATTACKING, L2_11)
      end
      return false
    end
  end
  L2_11 = true
  return L2_11
end
OnCollisionOther = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  NetSetState(AI_IDLE)
  TimerDistanceScan()
  TimerCheckAttack()
end
OnReachedDestinationForGoingToLastLocation = L0_0
function L0_0()
  StopTimer("TimerFindEnemies")
  StopTimer("TimerMoveForward")
  StopTimer("TimerAntiKite")
  StopTimer("TimerFeared")
  TurnOffAutoAttack(STOPREASON_IMMEDIATELY)
  NetSetState(AI_HALTED)
end
HaltAI = L0_0
