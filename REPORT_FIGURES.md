# Figures and visual results from the final report

All 36 embedded images were extracted from the supplied 36-page PDF. File names preserve the source page (`pNN`) and image order (`-NN`). Captions below connect each figure group to the report's findings. Full pose-by-pose values and property tables are in [`REPORT_RESULTS.md`](REPORT_RESULTS.md).

Source: [Final Report: Rational Drug Design (Google Drive PDF)](https://drive.google.com/file/d/14_uqM5_H2zxIRSuIsNtA-fZQtzYjWHBC/view?usp=drivesdk).

The docking tools are separated below. Each method has its own figures and reported results; DiffDock confidence scores are not compared directly with docking energies.

## Page 4

![Report page 4, image 1](report_figures/p04-01.webp)

**Context:** The report introduces HIV-1 reverse transcriptase (PDB 1REV) as the target. This image is the target-structure visual used in its preparation section.

## Page 5

![Report page 5, image 1](report_figures/p05-01.webp)

![Report page 5, image 2](report_figures/p05-02.webp)

**Context:** These are ligand structure visuals associated with the selected *Toddalia asiatica* alkaloids. The report compares toddanol, toddaline, and toddaquinoline.

## DiffDock — toddanol (report pages 6–9)

### Report page 6

![Report page 6, image 1](report_figures/p06-01.webp)

![Report page 6, image 2](report_figures/p06-02.webp)

![Report page 6, image 3](report_figures/p06-03.webp)

![Report page 6, image 4](report_figures/p06-04.webp)

**Context:** These images accompany the report's receptor-preparation and DiffDock methodology. DiffDock was used for toddanol; the report says it generated 40 poses.

### Report page 7

![Report page 7, image 1](report_figures/p07-01.webp)

![Report page 7, image 2](report_figures/p07-02.webp)

**Result:** The pose-ranking panel shows a top DiffDock score of **−0.172**. The first 18 visible scores run from −0.172 to −0.621. These are DiffDock confidence scores, not binding energies.

### Report page 8

![Report page 8, image 1](report_figures/p08-01.webp)

**Result:** The image shows the report's selected rank-1 toddanol pose (score **−0.172**) in the predicted pocket. This is a computational pose prediction, not experimental evidence of binding.

## SwissDock — toddanol (report pages 9–13)

### Report page 10

![Report page 10, image 1](report_figures/p10-01.webp)

**Context:** SwissDock was used for blind docking of toddanol. The report lists a 20 × 20 × 20 Å search region centered at (15, −16, 34) and exhaustiveness 4.

### Report page 11

![Report page 11, image 1](report_figures/p11-01.webp)

![Report page 11, image 2](report_figures/p11-02.webp)

![Report page 11, image 3](report_figures/p11-03.webp)

### SwissDock result

The report's top five toddanol models score **−4.244, −4.212, −4.151, −4.148, and −4.089 kcal/mol**. It separately quotes approximately −2.344 kcal/mol for the wider pose set; its wording around that value is unclear. Full note: [`REPORT_RESULTS.md`](REPORT_RESULTS.md).

## AutoDock Vina — three compounds (report pages 13–28)

### Setup (report pages 14–15)

The report's Vina search box is centered at **(11.956, −21.466, 25.367) Å**, sized **40 × 40 × 40 Å**, with exhaustiveness **8** and energy range **4**.

#### Report page 14

![Report page 14, image 1](report_figures/p14-01.webp)

![Report page 14, image 2](report_figures/p14-02.webp)

#### Report page 15

![Report page 15, image 1](report_figures/p15-01.webp)

![Report page 15, image 2](report_figures/p15-02.webp)

![Report page 15, image 3](report_figures/p15-03.webp)

**Context:** These are AutoDockTools preparation and docking screenshots. They document the workflow, not additional independent docking runs.

### Toddanol results (report pages 16–18)

#### Report page 16

![Report page 16, image 1](report_figures/p16-01.webp)

![Report page 16, image 2](report_figures/p16-02.webp)

![Report page 16, image 3](report_figures/p16-03.webp)

**Toddanol result:** Vina mode 1 is **−8.6 kcal/mol**. Modes 2 and 3 are −8.4 and −8.3 kcal/mol, with RMSD lower bounds of 1.551 and 1.802 Å. The figure contains all nine reported modes; the complete table is in [`REPORT_RESULTS.md`](REPORT_RESULTS.md).

#### Report page 17

![Report page 17, image 1](report_figures/p17-01.webp)

**Context:** The pose visualization shows the report's toddanol pose in the receptor. The score is a docking prediction and does not establish inhibition.

### Toddaline results (report pages 19–21)

#### Report page 19

![Report page 19, image 1](report_figures/p19-01.webp)

![Report page 19, image 2](report_figures/p19-02.webp)

**Toddaline result:** Vina mode 1 is **−9.5 kcal/mol**; mode 2 is −7.3 kcal/mol. The report's remaining modes have much larger RMSD lower bounds (14.882–28.438 Å), so it describes one dominant pose. See the full nine-mode table in [`REPORT_RESULTS.md`](REPORT_RESULTS.md).

### Toddaquinoline results (report pages 22–24)

#### Report page 22

![Report page 22, image 1](report_figures/p22-01.webp)

![Report page 22, image 2](report_figures/p22-02.webp)

**Toddaquinoline result:** Vina mode 1 is **−9.8 kcal/mol**; the next two modes are −9.6 and −9.4 kcal/mol. Mode 4 has an RMSD lower bound of 1.484 Å. The report describes several favorable poses; all nine modes are tabulated in [`REPORT_RESULTS.md`](REPORT_RESULTS.md).

### Comparison across compounds (report page 25)

| Compound | Report-selected Vina mode 1 (kcal/mol) | Report's relative conclusion |
|---|---:|---|
| Toddanol | −8.6 | Good; moderate pose consistency |
| Toddaline | −9.5 | Better; one dominant pose |
| Toddaquinoline | −9.8 | Best; multiple favorable poses |

The report therefore ranks toddaquinoline first by its selected Vina scores. **Caveat:** archived Vina files conflict with the report's toddanol/toddaquinoline mapping; this discrepancy is documented in [`DATA_AUDIT.md`](DATA_AUDIT.md) and has not been independently resolved.

## Drug-likeness results — report pages 29–33

![Report page 29, image 1](report_figures/p29-01.webp)

![Report page 29, image 2](report_figures/p29-02.webp)

![Report page 29, image 3](report_figures/p29-03.webp)

**Toddanol:** MW 290.12 Da, LogP 2.84, HBD/HBA 1/5, PSA 52.15 Å², zero Lipinski violations; reported drug-likeness model score **−0.28**.

## Page 30

![Report page 30, image 1](report_figures/p30-01.webp)

**Toddaline:** MW 348.12 Da, LogP 4.80, HBD/HBA 0/4, PSA 33.48 Å², zero Lipinski violations.

## Page 31

![Report page 31, image 1](report_figures/p31-01.webp)

![Report page 31, image 2](report_figures/p31-02.webp)

**Context:** Report images from the toddaline and toddaquinoline drug-likeness sections.

## Page 32

![Report page 32, image 1](report_figures/p32-01.webp)

![Report page 32, image 2](report_figures/p32-02.webp)

**Toddaquinoline:** MW 239.06 Da, LogP 3.27, HBD/HBA 1/4, PSA 44.32 Å², zero Lipinski violations; reported BBB score **4.39**.

## Page 33

![Report page 33, image 1](report_figures/p33-01.webp)

**Overall drug-likeness result:** The report says all three compounds have zero Lipinski violations. These rule-based properties do not establish bioavailability, safety, antiviral activity, or clinical suitability.
