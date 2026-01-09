
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name FactoryFloorCalculator2025 -dir "D:/FactoryFloorCalculator2025/planAhead_run_1" -part xc6slx16csg324-3N
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/FactoryFloorCalculator2025/vardisp.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/FactoryFloorCalculator2025} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Nexys3_master.ucf" [current_fileset -constrset]
add_files [list {Nexys3_master.ucf}] -fileset [get_property constrset [current_run]]
link_design
