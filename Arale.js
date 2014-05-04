// pig.js 
define(function(require, exports, module){
	var Class = require("arale/class/1.1.0/class");

	var Pig = Class.create({
		initialize:function(name){
			this.name = name;
		},
		talk:function(){
			alert("I'm"+this.name);
		}
	});

	module.exports = Pig;
});

// redpig.js 
define(function(require, exports, module){
	var Pig = require("./pig");

	var RedPig = Pig.extend({
		initialize:function(){
			RedPig.superclass.initialize.call(this,name);
		},
		color:"red"
	});

	module.exports = RedPig;
});

// flyable.js
define(function(require, exports, module){
	exports.fly = function(){
		alert("I can fly.");
	}
});

// flyable-red-pig.js
define(function(require, exports, module){
	var RedPig = require("./redpig");
	var Flyable = require("./flyable");

	var FlyableRedPig = RedPig.extend({
		Implements:Flyable,
		initialize:function(name){
			FlyableRedPig.superclass.initialize.call(this,name);
		}
	});

	module.exports = FlyableRedPig;
});

// flyable-red-pig-extensions.js
define(function(require, exports, module){
	var FlyableRedPig = require("./flyable-red-pig");

	FlyableRedPig.implements({
		swim:function(){
			alert("I can swim!");
		}
	});

	module.exports = FlyableRedPig;
	return FlyableRedPig;
});