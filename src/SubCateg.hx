// it's just easier with this lib
import classnames.ClassNames.fastNull as classNames;

import MyTheme.CGColors;
import css.Properties;
import mui.core.styles.Classes;
import mui.core.styles.Styles;
import react.ReactComponent;
import react.ReactMacro.jsx;

private typedef Props = {
	> PublicProps,
	var classes:TClasses;
}

private typedef PublicProps = {
	?label:String,
	?onclick:Void->Void,
	?colorClass:String,
	?icon: String,
}

private typedef TClasses = Classes<[
	labelShip,
]>

@:acceptsMoreProps
@:publicProps(PublicProps)
@:wrap(Styles.withStyles(styles))
class SubCateg extends ReactComponentOfProps<Props> {

	public static function styles(theme:MyTheme):ClassesDef<TClasses> {
		return Styles.jss({
			labelShip : {
				backgroundColor: CGColors.White,
				fontSize: "0.95rem",
				margin: "10 8",
				padding: "5 10",
				borderRadius: 16,
				textDecoration: "none",
				display: "inline-block",

				transition: "all 0.5s ease",

				"&::hover" : {
					backgroundColor: "#FFFFFF",//untyped color('#FFFFF').darken(10).hex(),
				},

				"&.cagSelect" : {
					color:'#E56403',
				},

				"&.cagLabelRouge" : {
					color:'#E53909',
				},

				"&.cagBio" : {
					color:'#16993B',
				},
			}
		});
	}

	override function render() {
		var linkClasses = classNames({
			'${props.classes.labelShip}': true,
			'${props.colorClass}': true,
		});

		var iconClasses = classNames({
			'${props.icon}' : true,
		});

		return jsx(
			<a onClick={props.onclick} className={linkClasses}>
				<i className={iconClasses}></i> {props.label}
			</a>
		);
	}
}

