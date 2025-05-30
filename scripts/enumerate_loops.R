
library(sybil)
library(sybilSBML)
library(sybilcycleFreeFlux)


ec_model = sybilSBML::readSBMLmod("/home/touliopoulos/project/erasmus/erasmus_2025_project/ext_data/models/e_coli_core.xml")
ec_reaction_ids <- sybil::react_id(ec_model)
ec_cycles <- sybilcycleFreeFlux::enumerateCycles(ec_model, rxnList = ec_reaction_ids)


model = sybilSBML::readSBMLmod("/home/touliopoulos/project/erasmus/erasmus_2025_project/private_data/Reconstructions_data/MATLAB_to_SBML_Roseburia_intestinalis_L1_82_fixed.xml")
#model = sybilSBML::readSBMLmod("/home/touliopoulos/iAF1260.xml")
reaction_ids <- react_id(model)

#validateSBMLdocument('/home/touliopoulos/project/erasmus/erasmus_2025_project/private_data/Reconstructions_data/Roseburia_intestinalis_L1_82_AGORA2_fixed.xml')
validateSBMLdocument('/home/touliopoulos/project/erasmus/erasmus_2025_project/private_data/Reconstructions_data/MATLAB_to_SBML_Roseburia_intestinalis_L1_82_fixed.xml')


cycles_roseburia = sybilcycleFreeFlux::enumerateCycles(model, rxnList = reaction_ids)



cycles[1,1]
cycles[2,1]
cycles[3,1]

write.table(cycles, file = "cycles_roseburia.csv", col.names = NA)
