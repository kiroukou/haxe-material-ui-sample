package;

import js.Browser;

import mui.core.Button;
import mui.core.CssBaseline;
import mui.core.Grid;
import mui.core.styles.MuiTheme.createMuiTheme;
import mui.core.styles.MuiThemeProvider;
import react.ReactDOM;
import react.ReactMacro.jsx;

class App {
	public static function main() {
		var wrapper = Browser.document.createElement("div");
		Browser.document.body.appendChild(wrapper);

		// Will be merged with default values from mui
		var theme = createMuiTheme({
			palette: {
				primary: {main: "#a53fa1"},
				secondary: {main:"#84BD55"},
				error: {main:"#FF0000"},       
			},
			typography:{
				fontFamily:['Cabin','"Helvetica Neue"','Arial','sans-serif',],
				fontSize:16,          
			},
		});

		var app = ReactDOM.render(
			jsx('
				<$MuiThemeProvider theme=${theme}>
					<>
						<$CssBaseline />
						<div style={{maxWidth: 1240, margin: "auto", padding: "0 10px",}}>  
						<$Grid container>
							<$Grid item>
								<$Button color=${Primary} variant=${Outlined} fullWidth>
									Test
								</$Button>
							</$Grid>
							<$Grid item>
								<$MyComponent>
									Test 2
								</$MyComponent>
							</$Grid>
						</$Grid>
						</div>

						<div style={{maxWidth: 1240, margin: "auto", padding: "0 10px",}}>  
						<$Grid container style={{ marginBottom: 20}}  spacing={Spacing_24}>
                    		<$Grid item xs={12} sm={4} md={3} ><$Product /></$Grid>
							<$Grid item xs={12} sm={4} md={3} ><$Product /></$Grid>
							<$Grid item xs={12} sm={4} md={3} ><$Product /></$Grid>
							<$Grid item xs={12} sm={4} md={3} ><$Product /></$Grid>
                    	</$Grid>
						</div>
					</>
				</$MuiThemeProvider>
			'),
			wrapper
		);

		#if (debug && react_hot)
		ReactHMR.autoRefresh(app, false);
		#end
	}
}
