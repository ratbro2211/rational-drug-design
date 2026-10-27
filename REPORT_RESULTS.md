# Results transcribed from the final report

This companion file preserves the numerical results and distinctions reported in the 36-page final report. The PDF remains the authoritative source for full methodology, context, and figure placement: [open the report on Google Drive](https://drive.google.com/file/d/14_uqM5_H2zxIRSuIsNtA-fZQtzYjWHBC/view?usp=drivesdk).

> **Interpretation limit:** Docking scores, pose rankings, confidence scores, and rule-based drug-likeness estimates are computational predictions. They do not demonstrate enzyme inhibition, antiviral activity, safety, pharmacokinetics, or clinical suitability.

## AutoDock Vina

The report uses a 40 × 40 × 40 Å search box centered at (11.956, −21.466, 25.367), exhaustiveness 8, and energy range 4. Each ligand produced nine modes. Energies and RMSD values below are transcribed from the report's Vina result tables. RMSD columns are lower/upper bound, in Å.

### Toddanol

| Mode | Affinity (kcal/mol) | RMSD l.b. (Å) | RMSD u.b. (Å) |
|---:|---:|---:|---:|
| 1 | −8.6 | 0.000 | 0.000 |
| 2 | −8.4 | 1.551 | 6.619 |
| 3 | −8.3 | 1.802 | 6.108 |
| 4 | −7.6 | 1.834 | 5.207 |
| 5 | −7.5 | 1.954 | 5.827 |
| 6 | −7.5 | 2.139 | 3.370 |
| 7 | −7.3 | 1.537 | 6.541 |
| 8 | −7.2 | 2.266 | 4.415 |
| 9 | −7.1 | 1.868 | 5.226 |

### Toddaline

| Mode | Affinity (kcal/mol) | RMSD l.b. (Å) | RMSD u.b. (Å) |
|---:|---:|---:|---:|
| 1 | −9.5 | 0.000 | 0.000 |
| 2 | −7.3 | 1.914 | 2.617 |
| 3 | −7.2 | 14.882 | 17.133 |
| 4 | −7.1 | 18.646 | 21.823 |
| 5 | −7.1 | 21.572 | 23.190 |
| 6 | −7.0 | 18.733 | 20.958 |
| 7 | −7.0 | 19.008 | 21.866 |
| 8 | −6.7 | 18.670 | 20.472 |
| 9 | −6.7 | 28.438 | 29.761 |

### Toddaquinoline

| Mode | Affinity (kcal/mol) | RMSD l.b. (Å) | RMSD u.b. (Å) |
|---:|---:|---:|---:|
| 1 | −9.8 | 0.000 | 0.000 |
| 2 | −9.6 | 2.092 | 6.114 |
| 3 | −9.4 | 3.150 | 4.908 |
| 4 | −9.0 | 1.484 | 2.616 |
| 5 | −8.8 | 3.564 | 5.862 |
| 6 | −8.5 | 3.324 | 5.237 |
| 7 | −8.5 | 3.102 | 4.398 |
| 8 | −8.3 | 2.988 | 5.857 |
| 9 | −8.1 | 3.677 | 6.114 |

The report's selected headline scores are −8.6 (toddanol), −9.5 (toddaline), and −9.8 kcal/mol (toddaquinoline). The archived folder outputs show −9.8, −9.5, and −8.6 in folder order; the toddanol/toddaquinoline assignment therefore remains unreconciled. The headline mapping follows the user's instruction to use the final report, while preserving the original files and documenting this discrepancy in `DATA_AUDIT.md`.

## DiffDock: toddanol

The report says 40 poses were generated. Its screenshot visibly lists the following first 18 confidence scores. These are DiffDock confidence scores, not binding energies.

| Rank | Score | Rank | Score |
|---:|---:|---:|---:|
| 1 | −0.172 | 10 | −0.474 |
| 2 | −0.191 | 11 | −0.476 |
| 3 | −0.252 | 12 | −0.502 |
| 4 | −0.278 | 13 | −0.543 |
| 5 | −0.293 | 14 | −0.582 |
| 6 | −0.311 | 15 | −0.592 |
| 7 | −0.407 | 16 | −0.613 |
| 8 | −0.460 | 17 | −0.616 |
| 9 | −0.474 | 18 | −0.621 |

The report describes a cluster of predicted poses in one region and presents the top-ranked pose as the selected pose. These visualizations are reproduced in the report-figure gallery.

## SwissDock: toddanol

| Model | Reported binding affinity / ΔG (kcal/mol) |
|---:|---:|
| 1 | −4.244 |
| 2 | −4.212 |
| 3 | −4.151 |
| 4 | −4.148 |
| 5 | −4.089 |

The report also quotes an approximate −2.344 kcal/mol value for the wider set of poses. Its wording about this value is internally unclear; the five ranked model values above are transcribed as shown, without attempting to resolve that ambiguity.

## Lipinski and physicochemical properties

| Compound | MW (Da) | LogP | H-bond donors | H-bond acceptors | PSA (Å²) | Violations |
|---|---:|---:|---:|---:|---:|---:|
| Toddanol | 290.12 | 2.84 | 1 | 5 | 52.15 | 0 |
| Toddaline | 348.12 | 4.80 | 0 | 4 | 33.48 | 0 |
| Toddaquinoline | 239.06 | 3.27 | 1 | 4 | 44.32 | 0 |

The report gives a drug-likeness model score of −0.28 for toddanol and a BBB-permeability score of 4.39 for toddaquinoline. It does not provide those scores for all three compounds. Passing Lipinski thresholds is not evidence of actual oral bioavailability.

## Source report's qualitative observations

- **Toddanol:** the report describes the top three Vina poses as relatively similar, while noting alternative poses; its DiffDock and SwissDock visualizations concern toddanol only.
- **Toddaline:** the report notes one dominant top-scoring Vina pose; the remaining modes have much larger RMSD values.
- **Toddaquinoline:** the report notes several favorable Vina modes and describes mode 4 as close to the reference pose (RMSD lower bound 1.484 Å).
- The report discusses Tyr-188, Lys-223, and Leu-228 as residues of interest. The available project artifacts do not independently establish specific residue contacts or experimental inhibition.

## Figures

The extracted report images, organized by their original PDF page and image order, are indexed in [`REPORT_FIGURES.md`](REPORT_FIGURES.md). The complete PDF remains linked above for full-page context.
