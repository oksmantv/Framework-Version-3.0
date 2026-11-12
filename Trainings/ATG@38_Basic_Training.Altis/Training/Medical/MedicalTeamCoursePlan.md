# Medical Team Course — Design and Implementation Plan

## Goal

Build one multiplayer medical-combat course started from `MedicalTeamTerminal_1`.

The nearby group deploys into a hostile area, fights through a variable enemy presence, finds three friendly casualties, and resolves every casualty outcome.

The course succeeds when every casualty is either stabilized or dead, provided at least one casualty survives and is stabilized. If all three casualties are alive, all three must be stabilized. It fails when the whole enrolled team is dead or leaves the AO, or when all casualties die.

On completion or failure, surviving enrolled players return to `MedicalSpawn` and receive task + radio feedback from **Team Medical Instructor**.

---

## Player Flow

1. A player uses `MedicalTeamTerminal_1`.
2. The system records that player’s current group as the course team.
3. All alive members of that group within 100 metres of `MedicalTeamTerminal_1` are enrolled and receive the same course task.
4. All enrolled members teleport to `MedicalTeamSpawn_1`.
5. The selected mode builds the scenario:
   - **Dry Run**: popup targets only; no static AI and no hunt waves.
   - **Level 1**: lower static-AI density and slow/small hunt waves.
   - **Level 2**: medium static-AI density and hunt waves.
   - **Level 3**: full static-AI density and faster/larger hunt waves.
6. The script randomly selects one `MedicalTeamCasualty_1_X` anchor, then spawns three captive Tier 2 (`"lot"`) casualties at valid randomized positions around that anchor.
7. Static threats either use popup targets or replace a random subset of popup targets with enemy AI.
8. Live levels also spawn repeating LAMBS **rush** enemies from the configured hunt positions.
9. The course waits until every casualty is resolved:
  - a living casualty must be fully healed;
  - a dead casualty counts as resolved;
  - at least one casualty must be alive and fully healed for success.
10. The system stops hunt spawning, cleans up spawned units, restores popup targets, returns survivors to `MedicalSpawn`, resolves every enrolled player’s task, and sends the Team Medical Instructor message.

---

## Editor Objects Required

### Required now

| Editor variable | Purpose |
|---|---|
| `MedicalTeamTerminal_1` | Course action box / start terminal. |
| `MedicalSpawn` | Return point for every surviving enrolled player after pass or fail. |
| `MedicalTeamSpawn_1` | Team insertion point at the hostile training area. |
| `MedicalTeamCasualty_1_1` … `MedicalTeamCasualty_1_4` | Four candidate casualty-area anchors for course 1. The script randomly selects one anchor every run, then creates three casualty positions around it. |
| `MedicalTeamAO_1` | Area trigger defining who is inside the course AO and where failure is evaluated. |
| `MedicalTeamTarget_1_1` … `MedicalTeamTarget_1_15` | Fifteen popup targets used for dry run or as static-enemy positions in live levels. |
| `MedicalTeamHunt_1_1` … `MedicalTeamHunt_1_6` | Six enemy hunt spawn locations. |

### Optional object

| Editor variable | Purpose |
|---|---|
| `MedicalTeamBarrier_1` | Optional barrier to hold the team during setup; remove when all casualties/enemies are ready. |

---

## Modes and Difficulty

| Mode | Popup targets | Static enemy replacement | Hunt waves | Suggested static target percentage |
|---|---:|---:|---:|---:|
| Dry Run | Yes | No | None | 0% |
| Level 1 | Hidden | Yes | Slow/small | 50% |
| Level 2 | Hidden | Yes | Medium | 70% |
| Level 3 | Hidden | Yes | Fast/larger | 100% |

### Initial hunt-wave proposal

These are deliberately configuration values, not hardcoded course logic:

| Level | Groups per wave | Wave interval | Maximum simultaneous hunt groups |
|---|---:|---:|---:|
| Level 1 | 1 | 90 seconds | 1 |
| Level 2 | 1 | 60 seconds | 2 |
| Level 3 | 2 | 45 seconds | 3 |

Every wave selects from `MedicalTeamHunt_1_X` randomly. The spawner must stop immediately after success/failure/cleanup.

Static and hunt enemies use **independent**, matching the existing CQB Breach course.

---

## Casualty Rules

- Select one `MedicalTeamCasualty_1_X` anchor each run, then spawn exactly three friendly casualties around it.
- Use `getPos [distance, heading]` on the selected anchor. In Arma, the parameter order is **distance first**, then **heading**.
- Randomize each casualty's heading and distance; validate each generated position is safe enough and not too close to another generated casualty position. Retry a limited number of times, then use a fixed fallback offset.
- Apply existing `MedicalDamage` profile `"lot"` to each casualty.
- Keep casualties **captive** and use friendly-side units so enemy AI does not execute them.
- Keep the existing medical-course protections:
  - Gear blacklist.
  - Headless-client blacklist.
  - Hidden during setup; reveal only once the ACE damage state is ready.
- Living casualties must survive and be fully healed before they count as resolved: conscious, no open wounds/bleeding, no tourniquets, and stable vital signs. They may be moved, carried, or dragged during the exercise; no fixed extraction point is required.
- A casualty is resolved when it is fully healed or dead.
- Course success requires every casualty to be resolved and at least one casualty to be fully healed.
- If all three casualties survive, all three must be fully healed before the course succeeds.
- Course failure requires all casualties to be dead **or** all enrolled players to be dead/outside the AO.

---

## Static Threat / Popup Target Reuse

Duplicate and adapt the safe parts of the Compound Breach implementation instead of coupling the medical course to Compound Breach globals.

Reference behaviour:

- [Training/CompoundBreach/Compound_Spawns.sqf](Training/CompoundBreach/Compound_Spawns.sqf#L19-L93) already:
  - chooses a unique random subset of target locations;
  - hides popup targets for live runs;
  - spawns independent static AI at those positions;
  - uses leader/unit class pools;
  - randomizes stance;
  - assigns combat behaviour;
  - restores targets for dry runs.

Create dedicated team-course functions and state arrays rather than reusing `Compound_Index_*` or calling `Compound_Spawns` directly.

Recommended behaviour:

- **Dry Run**: reveal targets, enable simulation, reset `Terc` to down, register one-shot hit tracking, and spawn the three medical casualties. It has no static enemy AI or hunt waves.
- **Live levels**: hide target objects, disable their simulation, select a unique random subset, then spawn static enemy AI at the selected target position/direction.
- **Cleanup**: delete only units recorded in this course’s state; then unhide/reset all its targets and remove/avoid duplicate hit handlers.

Reference files:

- [Training/LiveRunCode.sqf](Training/LiveRunCode.sqf#L25-L103)
- [Training/DryRunCode.sqf](Training/DryRunCode.sqf#L8-L19)

---

## LAMBS Hunt Spawner

Use the newly available **`OKS_fnc_Lambs_Spawner`**. It owns one repeating hunter group at a time: it spawns a group, waits until that group is destroyed/unconscious, waits its configured respawn delay, then repeats until disabled.

Use a course-specific string switch, such as `MED_Team_1_StopHunts`, as the spawner's `ActivatedToDisableSpawner` parameter. Set it to `false` before starting live levels and `true` in every success, failure, and reset cleanup path.

The verified function signature is:

```sqf
[getPos _huntPosition, "rush", _infantryCount, independent, _trackingRange, [], "MED_Team_1_StopHunts", _respawnDelay] spawn OKS_fnc_Lambs_Spawner;
```

Reference: [fn_Lambs_Spawner.sqf](../../../../../../../../../../p:/OKS_GOL_Misc/functions/spawn/lambs/fn_Lambs_Spawner.sqf) (external mod source).

### Required spawner controls

- Only live levels create hunt waves.
- Start one spawner per selected hunt position only for live levels.
- The string stop switch must be set in all cleanup paths.
- The spawner itself prevents uncontrolled simultaneous respawns: it waits for its current hunter group to be eliminated before creating the next one.
- The static-enemy cleanup remains course-owned; the LAMBS spawner handles future hunt spawns through its stop switch.

---

## Team Membership and AO Rules

### Proposed enrollment rule

At course start, enroll all alive player units in the starter's group that are within **100 metres** of `MedicalTeamTerminal_1`.

This prevents remote group members from being teleported unexpectedly. `MedicalTeamStaging_1` is not required.

### Proposed AO failure rule

A player counts as available when alive and inside `MedicalTeamAO_1`.

The course fails after a grace period if no enrolled player remains available.

Recommended grace period: **30 seconds** outside the AO. This avoids failure when a player briefly crosses the boundary, is being dragged, or is reconnecting.

### Failure teleport rule

On failure, teleport surviving enrolled players to `MedicalSpawn`.

Dead players are not moved; normal respawn handles them.

---

## Tasks, Feedback, and Sounds

## Terminal Interaction

Every Medical Team course action — **Dry Run**, **Level 1**, **Level 2**, and **Level 3** — uses a two-second held interaction instead of starting immediately.

- The terminal action starts a local `CBA_fnc_progressBar` for **2 seconds**.
- Use the verified icon `\a3\ui_f\data\igui\cfg\simpletasks\types\use_ca.paa`.
- Only after the progress completes does the client request the server to start the selected course mode.
- The server still validates terminal distance, enrolled players, and run-lock state. Holding the action is presentation only; it is not the security check.
- Cancelling movement/action progress must not start the course.

### Local player tasks

Extend or reuse the local task helper with a team-course task type:

- Title: `Team Medical Course — <Mode>`
- Initial objective: `Reach the casualties. Fully heal every living casualty; at least one casualty must survive.`
- Success: `All casualty outcomes resolved and at least one casualty fully healed. Team medical course complete.`
- Failure (team wiped/outside AO): `The team could not maintain a presence in the area.`
- Failure (all casualties dead): `All casualties died before a patient could be stabilized.`

Every enrolled player receives the same local task ID/state.

### Radio feedback

Use the verified global wrapper directly from the server:

```sqf
["Team Medical Instructor", "side", _message, "TEAM MEDICAL INSTRUCTOR", sideUnknown, "\A3\ui_f\data\IGUI\Cfg\simpleTasks\types\radio_ca.paa"] spawn OKS_fnc_ChatGlobal;
```

`OKS_fnc_ChatGlobal` handles its own `remoteExec` to clients. Do not remote-execute the wrapper itself.

Suggested messages:

- Start: `Team Medical Instructor: Course started. Reach the casualties and fully heal every survivor.`
- Success: `Team Medical Instructor: Casualty outcomes resolved. Course complete. Return to medical training.`
- Fail: `Team Medical Instructor: Course failed. Team removed from the area.`

### Sounds

Use existing mission-root sound conventions:

- Start: `activated.wav`
- Success: `victory.wav` or existing course buzzer
- Failure: `failure.wav`
- Exit/return instruction: `evacuate_area.wav`

Reference: [Training/OKS_PlaySound.sqf](Training/OKS_PlaySound.sqf#L1-L3).

---

## Proposed Files

```text
Training/Medical/Team/
├─ MedicalTeamActions.sqf          # Adds Dry Run + Level 1–3 actions to MedicalTeamTerminal_1.
├─ MedicalTeamCourse.sqf           # Server-authoritative course controller and state machine.
├─ MedicalTeamTargets.sqf          # Popup target setup/reset or live static-AI replacement.
├─ MedicalTeamHunt.sqf             # Controlled LAMBS rush wave loop.
├─ MedicalTeamCasualties.sqf       # Spawns, hides, protects, and tracks three lot-severity casualties.
├─ MedicalTeamTask.sqf             # Local course task/debrief wrapper, or extend MedicalTask.sqf.
└─ MedicalTeamCleanup.sqf          # Idempotent success/failure/reset cleanup.
```

Add compile entries and the terminal bootstrap call to [Training/Medical/init.sqf](Training/Medical/init.sqf).

Initial bootstrap shape:

```sqf
[MedicalTeamTerminal_1, MedicalTeamSpawn_1, MedicalSpawn, MedicalTeamAO_1, [
  MedicalTeamCasualty_1_1, MedicalTeamCasualty_1_2,
  MedicalTeamCasualty_1_3, MedicalTeamCasualty_1_4
], [
  MedicalTeamTarget_1_1, MedicalTeamTarget_1_2, MedicalTeamTarget_1_3,
  MedicalTeamTarget_1_4, MedicalTeamTarget_1_5, MedicalTeamTarget_1_6,
  MedicalTeamTarget_1_7, MedicalTeamTarget_1_8, MedicalTeamTarget_1_9,
  MedicalTeamTarget_1_10, MedicalTeamTarget_1_11, MedicalTeamTarget_1_12,
  MedicalTeamTarget_1_13, MedicalTeamTarget_1_14, MedicalTeamTarget_1_15
], [
  MedicalTeamHunt_1_1, MedicalTeamHunt_1_2, MedicalTeamHunt_1_3,
  MedicalTeamHunt_1_4, MedicalTeamHunt_1_5, MedicalTeamHunt_1_6
]] execVM "Training\Medical\Team\MedicalTeamActions.sqf";
```

Use explicit target/hunt arrays in `init.sqf` after the final counts are known. Do **not** infer editor variable names at runtime.

---

## Server Ownership and State

The server owns all course state and creates/deletes all course units.

Suggested terminal variables:

```sqf
MED_Team_Active          // Bool — prevents concurrent runs.
MED_Team_RunId           // Number/string — identifies the active attempt.
MED_Team_EnrolledPlayers // Player objects.
MED_Team_Casualties      // Created casualty objects.
MED_Team_StaticGroups    // Static enemy groups.
MED_Team_HuntGroups      // LAMBS hunt groups.
```

Every delayed loop must check both `MED_Team_Active` and its matching `MED_Team_RunId`, so an old run cannot affect a restarted run.

---

## Completion Matrix

| Event | Result | Player handling |
|---|---|---|
| Every casualty resolved; at least one fully healed | Success | Stop spawns, resolve success tasks, play success feedback, return survivors. |
| All casualties dead before any stabilization | Failure | Stop spawns, resolve failed tasks, play failure feedback, return survivors. |
| No enrolled alive player remains in AO after grace period | Failure | Stop spawns, resolve failed tasks, return surviving outside-AO players. |
| Terminal activated while active | Reject | Tell caller course is already in use. |
| Dry Run targets all hit | Dry Run success | Resolve dry-run task, reset targets, return survivors. |

---

## Remaining Editor Setup

1. Add the `MedicalTeamAO_1` trigger covering the course area.
2. Create `MedicalTeamCasualty_1_1` through `MedicalTeamCasualty_1_4`. The script selects one anchor every run and generates three casualty positions around it.
3. Keep the existing rule that the course fails only when **no** enrolled alive player remains in the AO after the grace period; one player leaving does not fail the entire team.

---

## Implementation Sequence for Next Agent

1. Confirm remaining open decisions and final editor object counts.
2. Create the Team folder/scripts and compile/bootstrap them from `Training/Medical/init.sqf`.
4. Implement server run lock, enrollment, teleport, local task creation, and idempotent cleanup first.
5. Implement casualty spawning/tracking and pass/fail conditions.
6. Duplicate/adapt CQB popup-target/static-AI logic into isolated team-course code.
7. Implement hunt-wave lifecycle with hard simultaneous-group caps.
8. Add Dry Run + Level 1–3 terminal actions and sounds.
9. Test each completion matrix row in multiplayer, including restart during an active course.
