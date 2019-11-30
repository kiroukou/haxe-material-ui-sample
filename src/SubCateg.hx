// it's just easier with this lib
import classnames.ClassNames.fastNull as classNames;

import mui.core.Chip;
import mui.core.styles.Classes;
import mui.core.styles.Styles;
import react.ReactComponent;
import react.ReactMacro.jsx;

private typedef Props = {
	> PublicProps,
	var classes:TClasses;
}

private typedef PublicProps = {
	?label:ReactFragment,
	?icon:ReactFragment,
	?onClick:Void->Void,
	?className:String,
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
			labelShip: {
				backgroundColor: theme.palette.common.white,

				"& > svg": {
					color: "currentColor"
				}
			}
		});
	}

	override function render() {
		var classes = classNames({
			'${props.classes.labelShip}': true,
			'${props.className}': true
		});

		return jsx(
			<Chip
				size={Small}
				icon={props.icon}
				label={props.label}
				onClick={props.onClick}
				clickable={props.onClick != null}
				className={classes}
			/>
		);
	}
}

