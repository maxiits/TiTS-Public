package classes.Characters
{
	import classes.Creature;
	import classes.GLOBAL;
	
	public class Quaelle extends Creature
	{		
		//constructor
		public function Quaelle()
		{
			this._latestVersion = 1;
			this.version = this._latestVersion;
			this._neverSerialize = false;
			
			this.short = "Flahne";
			this.originalRace = "roehm";
			this.a = "";
			this.capitalA = "";
			this.long = "Placeholder";
			this.customDodge = "Placeholder";
			this.customBlock = "Placeholder";
			this.isPlural = false;
			
			this.meleeWeapon.attackVerb = "punch";
			this.meleeWeapon.longName = "semi-solid fist";
			this.meleeWeapon.hasRandomProperties = true;
			
			this.armor.longName = "durable dermis";
			this.armor.defense = 10;
			this.armor.hasRandomProperties = true;
			
			this.physiqueRaw = 2;
			this.reflexesRaw = 3;
			this.aimRaw = 1;
			this.intelligenceRaw = 4;
			this.willpowerRaw = 1;
			this.libidoRaw = 65;
			this.HPMod = 15;
			this.shieldsRaw = 0;
			this.HPRaw = this.HPMax();
			this.energyRaw = 100;
			this.lustRaw = 15;
			
			this.level = 1;
			this.XPRaw = normalXP();
			this.credits = 0;
			
			this.femininity = 90;
			this.eyeType = GLOBAL.TYPE_FROG;
			this.eyeColor = "blue";
			this.tallness = 118;
			this.thickness = 80;
			this.tone = 0;
			this.hairColor = "";
			this.scaleColor = "";
			this.furColor = "";
			this.hairLength = 0;
			this.hairType = GLOBAL.HAIR_TYPE_TENTACLES;
			this.beardLength = 0;
			this.beardStyle = 0;
			this.skinType = GLOBAL.SKIN_TYPE_GOO;
			this.skinTone = "yellow";
			this.skinFlags = [GLOBAL.FLAG_SQUISHY, GLOBAL.FLAG_LUBRICATED];
			addSkinFlag(GLOBAL.FLAG_ABSORBENT);
			this.faceType = GLOBAL.TYPE_FROG;
			this.faceFlags = new Array();
			this.tongueType = GLOBAL.TYPE_FROG;
			this.lipMod = 2;
			this.earType = GLOBAL.TYPE_FROG;
			this.antennae = 2;
			this.antennaeType = GLOBAL.TYPE_GOOEY;
			this.horns = 0;
			this.hornType = 0;
			this.armType = 0;
			this.gills = false;
			this.wingType = 0;
			this.legType = GLOBAL.TYPE_GOOEY;
			this.legCount = 0;
			this.legFlags = [GLOBAL.FLAG_PLANTIGRADE];
			//0 - Waist
			//1 - Middle of a long tail. Defaults to waist on bipeds.
			//2 - Between last legs or at end of long tail.
			//3 - On underside of a tail, used for driders and the like, maybe?
			this.genitalSpot = 0;
			this.tailType = 0;
			this.tailCount = 0;
			this.tailFlags = new Array();
			//Used to set cunt or dick type for cunt/dick tails!
			this.tailGenitalArg = 0;
			//tailGenital:
			//0 - none.
			//1 - cock
			//2 - vagina
			this.tailGenital = 0;
			//Tail venom is a 0-100 slider used for tail attacks. Recharges per hour.
			this.tailVenom = 0;
			//Tail recharge determines how fast venom/webs comes back per hour.
			this.tailRecharge = 5;
			//hipRating
			//0 - boyish
			//2 - slender
			//4 - average
			//6 - noticable/ample
			//10 - curvy//flaring
			//15 - child-bearing/fertile
			//20 - inhumanly wide
			this.hipRatingRaw = 13;
			//buttRating
			//0 - buttless
			//2 - tight
			//4 - average
			//6 - noticable
			//8 - large
			//10 - jiggly
			//13 - expansive
			//16 - huge
			//20 - inconceivably large/big/huge etc
			this.buttRatingRaw = 13;
			//No dicks here!
			this.cocks = new Array();
			this.createCock();
			this.cocks[0].cThicknessRatioRaw = 1;
			this.cocks[0].cLengthRaw = 10;
			this.cocks[0].addFlag(GLOBAL.FLAG_LUBRICATED);
			this.cocks[0].addFlag(GLOBAL.FLAG_SQUISHY);
			this.cocks[0].addFlag(GLOBAL.FLAG_SMOOTH);
			this.cocks[0].addFlag(GLOBAL.FLAG_PREHENSILE);	
			//balls
			this.balls = 0;
			this.cumMultiplierRaw = 50;
			//Multiplicative value used for impregnation odds. 0 is infertile. Higher is better.
			this.cumQualityRaw = 0;
			this.cumType = GLOBAL.FLUID_TYPE_SUGAR;
			this.ballSizeRaw = 0;
			this.ballFullness = 100;
			//How many "normal" orgams worth of jizz your balls can hold.
			this.ballEfficiency = 400;
			//Scales from 0 (never produce more) to infinity.
			this.refractoryRate = 9991;
			this.minutesSinceCum = 65;
			this.timesCum = 9001;
			this.cockVirgin = false;
			this.vaginalVirgin = false;
			this.analVirgin = false;
			this.vaginas = new Array();
			//front vol 60
			this.createVagina();
			this.girlCumType = GLOBAL.FLUID_TYPE_SUGAR;
			this.vaginas[0].hymen = false;
			this.vaginas[0].clits = 1;
			this.vaginas[0].wetnessRaw = 1;
			this.vaginas[0].loosenessRaw = 1;
			this.vaginas[0].bonusCapacity = 0;
			//back volume 1296
			this.createVagina();
			this.vaginas[1].hymen = false;
			this.vaginas[1].clits = 1;
			this.vaginas[1].wetnessRaw = 4;
			this.vaginas[1].loosenessRaw = 4;
			this.vaginas[1].bonusCapacity = 400;
			//slug flesh is more pliable than standard
			this.elasticity = 1.5;
			//Fertility is a % out of 100. 
			this.fertilityRaw = 1.15;
			this.clitLength = .5;
			this.pregnancyMultiplierRaw = 1;
			
			this.breastRows[0].breastRatingRaw = 15;
			this.nippleColor = "yellow";
			this.milkMultiplier = 0;
			this.milkType = GLOBAL.FLUID_TYPE_SUGAR;
			//The rate at which you produce milk. Scales from 0 to INFINITY.
			this.milkRate = 0;
			this.ass.wetnessRaw = 3;
			
			this._isLoading = false;
		}		
		
	}
}