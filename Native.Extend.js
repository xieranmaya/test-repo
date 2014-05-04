Array.prototype.reduce = function (fn, initVal) {
    'use strict';
    var start = 1,
        i,
        tmp = initVal,
        len;

    if (tmp){
        start = 0;
    }else{
        tmp = this[0];
    }

    for(i = start, len = this.length; i < len; i++){
        tmp = fn(tmp, this[i]);
    }

    return tmp;
};




Array.method("reduce",function(fn,initVal){

});




Function.prototype.bind = function(that){
    var fn = this;
    var args = Array.slice.call(arguments);
    var object = args.shift();

    return function(){
        return fn.apply(object,args.concat(Array.prototype.slice.call(arguments)));
    }
};




Function.prototype.method = function(name,fn){
    this.prototype[name] = fn;
    return this;
};;;

String.method("fuck",function(){
    console.log("fuck");
    return this;
}).method("you",function(){
    console.log("you");
    return this;
}).method("ass",function(){
    console.log("ass");
    return this;
})

"yqy".fuck().you().ass();