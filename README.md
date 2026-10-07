# Luma Eyewear VTO Experiment Website — Final Six-Frame Version

This folder is ready to upload to GitHub Pages. It contains **one retail website** used for both experimental conditions.

## Experimental URLs

After publishing, use:

- Picture-only control: `https://YOUR-USERNAME.github.io/YOUR-REPOSITORY/?vto=0`
- Picture + VTO treatment: `https://YOUR-USERNAME.github.io/YOUR-REPOSITORY/?vto=1`

The two conditions use the same interface, navigation, six products, product images, $149.00 price, fixed 4.9 rating, descriptions, dimensions, and product-detail layout. The only website manipulation is whether the Virtual Try-On affordance is available.

## Six products

1. Black Round — 48–21–140 mm
2. Brown Square — 52–17–140 mm
3. Silver Aviator — 54–17–145 mm
4. Rose Cat Eye — 52–17–140 mm
5. Crystal Oval — 53–17–136 mm
6. Burgundy Butterfly — 52–16–140 mm

The measurement order is lens width – bridge width – temple length. These are fictional Luma products, but the measurements were benchmarked against representative real retail frame listings with similar shapes.

## Important research notes

- The $149.00 price is identical for every frame.
- The 4.9 rating and review count are fixed experimental stimuli, not real Luma consumer reviews.
- All six frames appear in both conditions.
- All six frames are available in VTO when `?vto=1`.
- VTO overlays start at scale 1.70.
- Camera images are processed locally in the browser and are not saved by the webpage.
- The VTO model and JavaScript libraries load from HTTPS resources, so internet access is required.

See `GITHUB_PAGES_SETUP_CN.md` and `PROLIFIC_QUALTRICS_6_FRAME_GUIDE_CN.md` for detailed instructions.
