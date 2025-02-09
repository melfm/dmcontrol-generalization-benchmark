#!/bin/bash


for SEED in 1; do
  sbatch run_cc_job_svea.sh 'Reach' 'drq' 100 'jaco_osc_pose_5hz' ${SEED}
  sbatch run_cc_job_svea.sh 'Reach' 'sac' 100 'jaco_osc_pose_5hz' ${SEED}
  sbatch run_cc_job_svea.sh 'Reach' 'svea' 100 'jaco_osc_pose_5hz' ${SEED}

  sbatch run_cc_job_svea.sh 'Lift' 'drq' 200 'jaco_osc_pose_5hz' ${SEED}
  sbatch run_cc_job_svea.sh 'Lift' 'sac' 200 'jaco_osc_pose_5hz' ${SEED}
  sbatch run_cc_job_svea.sh 'Lift' 'svea' 200 'jaco_osc_pose_5hz' ${SEED}

  sbatch run_cc_job_svea.sh 'Lift' 'drq' 200 'jaco_osc_position_5hz_kp_v2' ${SEED}
  sbatch run_cc_job_svea.sh 'Lift' 'sac' 200 'jaco_osc_position_5hz_kp_v2' ${SEED}
  sbatch run_cc_job_svea.sh 'Lift' 'svea' 200 'jaco_osc_position_5hz_kp_v2' ${SEED}
done

# for SEED in {1..3}; do
  # sbatch scripts/cc_server/run_cc_job_drq.sh 'reach_osc_pose_5hz' drq agents.drq_agent.DRQAgent True ${SEED}
  # sbatch scripts/cc_server/run_cc_job_drq.sh 'reach_osc_position_5hz' drq agents.drq_agent.DRQAgent True ${SEED}

  # sbatch scripts/cc_server/run_cc_job_drq.sh 'lift_jaco_osc_pose_5hz' drq agents.drq_agent.DRQAgent False ${SEED}
  # sbatch scripts/cc_server/run_cc_job_drq.sh 'lift_jaco_joint_position_5hz' drq agents.drq_agent.DRQAgent False ${SEED}

  # sbatch scripts/cc_server/run_cc_job_drq.sh 'lift_jaco_osc_pose_5hz' drq agents.drq_agent.DRQAgent True ${SEED}
  # sbatch scripts/cc_server/run_cc_job_drq.sh 'lift_jaco_osc_position_5hz' drq agents.drq_agent.DRQAgent True ${SEED}
  # sbatch scripts/cc_server/run_cc_job_drq.sh 'lift_jaco_joint_position_5hz' drq agents.drq_agent.DRQAgent True ${SEED}
# done

#for SEED in {1..10}; do
  # sbatch scripts/cc_server/run_cc_job_ibit.sh 'reach_osc_pose_5hz' dbc agents.dbc_agent.DBCAgent True 'rex' ${SEED}
  # sbatch scripts/cc_server/run_cc_job_ibit.sh 'reach_osc_position_5hz' dbc agents.dbc_agent.DBCAgent True 'rex' ${SEED}

  # sbatch scripts/cc_server/run_cc_job_ibit.sh 'lift_jaco_osc_pose_5hz' dbc agents.dbc_agent.DBCAgent True 'rex' 0.2 ${SEED}
  # sbatch scripts/cc_server/run_cc_job_ibit.sh 'lift_jaco_osc_position_5hz' dbc agents.dbc_agent.DBCAgent True 'rex' 0.2 ${SEED}
  # sbatch scripts/cc_server/run_cc_job_ibit.sh 'lift_jaco_joint_position_5hz' dbc agents.dbc_agent.DBCAgent True 'rex' 0.2 ${SEED}

  # sbatch scripts/cc_server/run_cc_job_ibit.sh 'lift_jaco_joint_position_5hz' dbc agents.dbc_agent.DBCAgent True 'rex' 0.5 ${SEED}
  # sbatch scripts/cc_server/run_cc_job_ibit.sh 'lift_jaco_joint_position_5hz' dbc agents.dbc_agent.DBCAgent True 'rex' 0.9 ${SEED}

  # sbatch scripts/cc_server/run_cc_job_ibit.sh 'lift_jaco_osc_pose_5hz' dbc agents.dbc_agent.DBCAgent True None 0 ${SEED}
  # sbatch scripts/cc_server/run_cc_job_ibit.sh 'lift_jaco_osc_position_5hz' dbc agents.dbc_agent.DBCAgent True None 0 ${SEED}
  # sbatch scripts/cc_server/run_cc_job_ibit.sh 'lift_jaco_joint_position_5hz' dbc agents.dbc_agent.DBCAgent True None 0 ${SEED}

#done
