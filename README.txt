VTO EXPERIMENT WEBSITE — SIX-FRAME VERSION

This package contains ONE retail website used for both experimental conditions.

CONTROL / PICTURE-ONLY CONDITION
Open:
  https://YOUR-USERNAME.github.io/YOUR-REPOSITORY/?vto=0

VTO CONDITION
Open:
  https://YOUR-USERNAME.github.io/YOUR-REPOSITORY/?vto=1

Both conditions use exactly the same:
- Luma retail interface and navigation
- six products
- front, side, angled, and standard-model photographs
- product descriptions
- $149.00 price
- 4.9 rating display
- frame-size display
- product-detail layout

The only manipulation remains whether the Virtual Try-On affordance is available.

PRODUCTS
1. Black Round — 49–20–145 mm
2. Brown Square — 52–18–145 mm
3. Silver Aviator — 58–14–140 mm
4. Rose Cat-Eye — 52–17–140 mm
5. Crystal Oval — 51–19–145 mm
6. Champagne Square — 53–18–140 mm

Size notation is lens width – bridge width – temple length, in millimeters.
The Luma products are fictional. The dimensions are representative specifications informed by comparable official optical-frame listings; see SIZE_SOURCES.txt.

In ?vto=1:
- Each product card indicates that Virtual Try-On is available.
- Each product detail page includes a Virtual Try-On button.
- All six products are available in the VTO modal.
- Every VTO overlay starts at frame scale 1.70.
- Camera processing occurs in the participant's browser.

In ?vto=0:
- No VTO affordance or VTO button is shown.

GITHUB PAGES
Upload the CONTENTS of this folder to the repository root, preserving:
  index.html
  assets/
  frames/

Then enable Settings > Pages > Deploy from a branch > main > /(root).

IMPORTANT
Camera access requires HTTPS (GitHub Pages is HTTPS) or localhost.
The first VTO model load requires internet access because MediaPipe is loaded from HTTPS resources.
