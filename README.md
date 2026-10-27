# Rational Drug Design

A computational docking study of *Toddalia asiatica* alkaloids against HIV-1 reverse transcriptase. The supplied report identifies the target as PDB 1REV and discusses toddanol, toddaline, and toddaquinoline.

> **Scope:** Docking scores are computational predictions, not measured binding affinities or evidence of antiviral activity, safety, or clinical suitability.

## Project structure

- `Dock_HIV_toddanol/`, `Dock_HIV_toddaline/`, `Dock_HIV_toddaquinoline/`: prepared receptor and ligand files, original configurations, Vina logs, and poses.
- `config.run.txt` in each folder: a runnable configuration using the ligand filename that is actually present. The supplied `config.txt` files remain unchanged.
- `scripts/run_vina.sh`: reruns all three cases and writes separate reproduced outputs without overwriting the supplied results.
- `figures/`: supplied project visualizations.
- `ligands/`: an extra structure with PubChem CID 145996610. It is retained as an unassigned input and is not included in the three-ligand comparison.
- `DATA_AUDIT.md`: verified score-label conflict, source config filename mismatch, and search-box notes.

The toddaline folder also contains a source file named `ligand` without an extension; it is preserved as supplied.

## Reproduce the Vina runs

1. Install AutoDock Vina and make its executable available on `PATH`.
2. From the repository root, run:

   ```bash
   bash scripts/run_vina.sh
   ```

Set `VINA_BIN=/path/to/vina` to use a non-default executable. Each run uses the supplied center (11.956, -21.466, 25.367 Angstroms), a 40-Angstrom box on each axis, exhaustiveness 8, and energy range 4. Vina logs warn that this box volume (64,000 cubic Angstroms) exceeds 27,000; review `DATA_AUDIT.md` before interpreting results as a focused active-site comparison.

The original Vina logs do not record the exact software version or a complete environment. Re-run results may therefore differ. The linked report also describes DiffDock and SwissDock, but their raw output artifacts are not included here.

## Reported results and data status

The final report is the primary source for the headline values in this project's summary:

| Compound | Reported Vina score (kcal/mol) |
| --- | ---: |
| toddanol | -8.6 |
| toddaline | -9.5 |
| toddaquinoline | -9.8 |

The archived Vina logs and pose files in the folder-labeled directories show -9.8, -9.5, and -8.6, respectively. The toddanol and toddaquinoline values therefore conflict with the report. The summary uses the report values, but the original output-to-compound mapping has not been independently verified; see `DATA_AUDIT.md`.

## Report and references

- [Final report PDF on Google Drive](https://drive.google.com/file/d/14_uqM5_H2zxIRSuIsNtA-fZQtzYjWHBC/view?usp=drivesdk) (linked, not stored in this repository).
- [RCSB PDB: 1REV](https://www.rcsb.org/structure/1REV)
- [AutoDock Vina publication](https://doi.org/10.1002/jcc.21334)
- PubChem records present in the SDF files: [CID 11390791](https://pubchem.ncbi.nlm.nih.gov/compound/11390791), [CID 2703](https://pubchem.ncbi.nlm.nih.gov/compound/2703), [CID 102004726](https://pubchem.ncbi.nlm.nih.gov/compound/102004726), and the unmapped [CID 145996610](https://pubchem.ncbi.nlm.nih.gov/compound/145996610).

## License

No license file is included.
