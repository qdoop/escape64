
function encode(x){


	return x.replace(/[+]/g,'_p').replace(/[\/]/g,'_d').replace(/[=]/g,'_q');


}

function decode(y){


	return y.replace(/_p/g,'+').replace(/_d/g,'/').replace(/_q/g,'=');


}


module.exports={
	encode:encode,
	decode:decode
}