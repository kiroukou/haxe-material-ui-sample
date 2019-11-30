package;

import mui.core.styles.Classes;
import mui.core.styles.Styles;
import mui.core.Card;
import mui.core.Button;
import mui.core.CardMedia;
import mui.core.CardContent;
import mui.core.CardActionArea;
import mui.core.CardActions;
import mui.core.Typography;
import mui.core.Avatar;
import mui.icon.LocalShipping;
import react.ReactComponent;
import react.ReactMacro.jsx;

private typedef Props = {
	var classes:TClasses;
}

private typedef TClasses = Classes<[
	button,
	card,
	media,
	cardContent,
	productBuy,
	starProduct,
	farmerAvatar,
	cagAvatarContainer,
	cagProductTitle,
	cagProductDesc,
	cagProductInfoWrap,
	cagProductInfo,
	cagProductPriceRate,
	cagProductLabel,
	cagLabelRouge,
	cagBio,
]>

@:noPublicProps
@:wrap(Styles.withStyles(styles))
class Product extends ReactComponentOfProps<Props> {
	public static function styles(theme:MyTheme):ClassesDef<TClasses> {
		return Styles.jss({
			button: {
				size: "small",
				textTransform: None,
				color: theme.palette.secondary.main
			},
			card: {
				backgroundColor: theme.palette.cagette.bg2
			},
			media: {
				height: 170,
				padding: 1,
			},
			cardContent: {
				padding: 10,
				paddingBottom: 5,
			},
			productBuy: {
				boxShadow: "none",
			},
			starProduct: {
				width: 30,
				height: 30,
				color: '#F9D800', // TODO: palette
				backgroundColor: theme.palette.common.white,
				marginLeft: "auto",
				fontSize: 16,
			},
			farmerAvatar: {
				color: theme.palette.grey._800,
				backgroundColor: theme.palette.grey._200,
				border: '3 solid ${theme.palette.common.white}',
				width: 70,
				height: 70,
				marginLeft: "auto",
				fontSize: 10,
			},
			cagAvatarContainer: {
				margin: "3%",
				height: "43%",
				display: "flex",
			},
			cagProductTitle: {
				lineHeight: "normal",
				fontSize: '1.08rem',
				fontStyle: "normal",
				fontWeight: 400,
				textTransform: UpperCase,
				marginBottom: 3,
				maxHeight: 40,
				overflow: Hidden,
			},
			cagProductLabel: {
				marginLeft: -3,
			},
			cagProductDesc: {
				fontSize: '0.9rem',
				color: theme.palette.grey._800,
				marginBottom : 0,
				maxHeight: 65,
				overflow: Hidden,
			},
			cagProductInfoWrap: {
				justifyContent: SpaceBetween,
				padding: "0 10px",
			},
			cagProductInfo: {
				fontSize: "1.3rem",
				"& .cagProductUnit" : {
					marginRight: "2rem",
				},
				"& .cagProductPrice" : {
					color: theme.palette.cagette.third,
				},
			},
			cagProductPriceRate: {
				fontSize: "0.75rem",
				color: theme.palette.grey._600,
				marginTop: -5,
				marginLeft: 5,
			},
			cagLabelRouge: {
				color: theme.palette.cagette.labelRouge
			},
			cagBio: {
				color: theme.palette.cagette.bio
			}
		});
	}

	override public function render() {
		var classes = props.classes;

		return jsx(
			<Card elevation={0} className={classes.card}>
				<CardActionArea>
					<CardMedia
						className={classes.media}
						image="/img/produit-oranges2.jpg"
						title="Orange Naveline de Catania"
					>
						<div className={classes.cagAvatarContainer}>
							<Avatar className={classes.starProduct}>
								<LocalShipping />
							</Avatar>
						</div>

						<div className={classes.cagAvatarContainer}>
							<Avatar src="/img/la-ferme-des-2-rivieres.jpg"
								className={classes.farmerAvatar}
							/>
						</div>
					</CardMedia>
					<CardContent className={classes.cardContent}>
						<Typography component="h3" className={classes.cagProductTitle}>
							Orange  Naveline de Catatania
						</Typography>
						<Typography component="p" className={classes.cagProductDesc}>
							La Ferme
						</Typography>
						<Typography component="p" className={classes.cagProductLabel}>
							<SubCateg
								label="Label rouge"
								icon={<LocalShipping fontSize={Small} />}
								className={classes.cagLabelRouge}
							/>

							<SubCateg
								label="Bio"
								icon={<LocalShipping fontSize={Small} />}
								className={classes.cagBio}
							/>
						</Typography>
					</CardContent>
				</CardActionArea>
				<CardActions className={classes.cagProductInfoWrap} >
					<Typography component="p" className={classes.cagProductInfo} >
						<span className="cagProductUnit">1 kg </span>
						<span className="cagProductPrice">2,50 €</span>
					</Typography>

					<QuantityInput/>

					<Button
						variant={Contained}
						color={Primary}
						className={classes.productBuy}
						disableRipple
					>
						<LocalShipping fontSize={Small} />
					</Button>
				</CardActions>
				<CardActions className={classes.cagProductInfoWrap} style={{ marginBottom: 10}}>
					<Typography component="p" className={classes.cagProductPriceRate} >
						2,50 €/kg
					</Typography>
				</CardActions>
			</Card>
		);
	}
}
