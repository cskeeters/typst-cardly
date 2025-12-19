readme:
	typst compile -f svg --pages 1           main.typ main1.svg
	typst compile -f svg --pages 2           main.typ main2.svg
	typst compile -f png --pages 1 --ppi 250 main.typ thumbnail.png
