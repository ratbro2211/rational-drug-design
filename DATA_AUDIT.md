# Data audit and open questions

This repository preserves the supplied docking files. The notes below distinguish the selected project-summary source from what remains unverified.

## Report-selected values and archived Vina outputs

The final report is used as the primary source for the project's headline values. The checked-in Vina logs and output poses agree with each other, but their folder labels disagree with two values in the report:

| Compound label in folder | Mode 1 in Vina log/output (kcal/mol) | Value in final report (kcal/mol) |
| --- | ---: | ---: |
| toddanol | -9.8 | -8.6 |
| toddaline | -9.5 | -9.5 |
| toddaquinoline | -8.6 | -9.8 |

For the summary, use the final-report values. The toddanol and toddaquinoline values are reversed relative to the archived folder-labeled outputs. No raw logs or poses have been relabeled or overwritten, and the original output-to-compound mapping remains unverified. Reconcile against the original run records before treating the ranking as independently reproduced.

## Original Vina config filenames

The supplied config.txt files refer to ligand1.pdbqt in all three folders. That file is present in Dock_HIV_toddaquinoline/, but the corresponding prepared input in Dock_HIV_toddanol/ and Dock_HIV_toddaline/ is named ligand.pdbqt. The original configs are preserved unchanged. New config.run.txt files use the filenames present in each folder.

## Search-box warning

The supplied box is 40 x 40 x 40 Angstroms (64,000 cubic Angstroms). All three supplied Vina logs warn that the search-space volume exceeds 27,000 cubic Angstroms. The warning does not by itself invalidate the run, but the box choice and its relationship to the intended binding site should be justified before interpreting the scores as a focused active-site comparison.

## Additional structure file

ligands/Conformer3D_COMPOUND_CID_145996610.sdf contains PubChem CID 145996610. The final report's three-compound comparison does not map this file to a named test ligand, so it is retained as an unassigned source structure and excluded from the comparison.

## Re-run metadata

The supplied logs contain random seeds but do not identify the exact Vina version or a complete environment. Re-running with the provided script creates new *_reproduced outputs; results may differ from the supplied files.
