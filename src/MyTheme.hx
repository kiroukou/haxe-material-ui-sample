import mui.core.styles.MuiTheme;

typedef MyTheme = Theme<
	MuiBreakpoints,
	MuiMixins,
	MuiOverrides,
	MuiPaletteAction,
	MuiPaletteCommon,
	MuiPaletteBackground,
	MuiPaletteGrey,
	MuiPaletteText,
	ColorPalette,
	MuiProps,
	MuiTypography,
	MuiShape,
	MuiTransitions,
	MuiZIndexes
>

typedef ColorPalette = {
	> DefaultPalette,

	var cagette:CagetteColorPalette;
}

typedef CagetteColorPalette = {
	var first:Color;
	var second:Color;
	var third:Color;

	var bg1:Color;
	var bg2:Color;
	var bg3:Color;

	var labelRouge:Color;
	var bio:Color;
}
