import mui.core.styles.Classes;
import mui.core.styles.Styles;
import react.ReactComponent;
import react.ReactMacro.jsx;

private typedef Props = {
	var classes:TClasses;
}

private typedef TClasses = Classes<[
	quantityInput,
]>

@:noPublicProps
@:wrap(Styles.withStyles(styles))
class QuantityInput extends ReactComponentOfProps<Props> {
	public static function styles(theme:MyTheme):ClassesDef<TClasses> {
		return Styles.jss({
			quantityInput: {
				border: '1px solid ${theme.palette.cagette.second}',
				borderRadius: 3,
				display: "flex",
				maxWidth: 104,

				"& div": {
					flexGrow: 1,
				},

				"& .quantityMoreLess": {
					backgroundColor: theme.palette.cagette.second,
					padding: 8,
					color: theme.palette.common.white,
					fontSize: "2rem",
					lineHeight: "1rem",
					cursor: "pointer",
					textAlign: Center,
					transition: "all 0.5s ease",

					"&::hover": {
						backgroundColor: theme.palette.cagette.second
					},
				},

				"& .quantity": {
					fontSize: "1.2rem",
					lineHeight: "2rem",
					minWidth: 35,
					textAlign: Center,
					verticalAlign: Middle,
					color: theme.palette.cagette.second,
					backgroundColor: theme.palette.common.white,
				},
			},
		});
	}

	override function render() {
		var classes = props.classes;

		return jsx(
			<div className=${classes.quantityInput}>
				<div className="quantityMoreLess"> - </div>
				<div className="quantity"> 1 </div>
				<div className="quantityMoreLess"> + </div>
			</div>
		);
	}
}
