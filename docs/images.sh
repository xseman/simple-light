#!/bin/bash

cd "$(dirname "$0")" || exit 1

declare -A images=(
	["js-preview"]="https://images.vscodethemes.com/xseman.simple-light/simple-light-js-preview-6m4.svg"
	["go-preview"]="https://images.vscodethemes.com/xseman.simple-light/simple-light-go-preview-6m4.svg"
	["java-preview"]="https://images.vscodethemes.com/xseman.simple-light/simple-light-java-preview-6m4.svg"
	["html-preview"]="https://images.vscodethemes.com/xseman.simple-light/simple-light-html-preview-6m4.svg"
	["css-preview"]="https://images.vscodethemes.com/xseman.simple-light/simple-light-css-preview-6m4.svg"
	["py-preview"]="https://images.vscodethemes.com/xseman.simple-light/simple-light-py-preview-6m4.svg"
	["cpp-preview"]="https://images.vscodethemes.com/xseman.simple-light/simple-light-cpp-preview-6m4.svg"
)

for name in "${!images[@]}"; do
	url="${images[$name]}"

	svg_path="${name}.svg"
	png_path="${name}.png"

	curl -o "${svg_path}" "${url}"
	inkscape \
		--export-filename="${png_path}" \
		--export-dpi=300 "${svg_path}"

	rm "${svg_path}"
done
