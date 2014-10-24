[![Build Status](https://travis-ci.org/qdoop/escape64.svg?branch=master)](https://travis-ci.org/qdoop/escape64)
#escape64

## Intro
Using standard __Base64__ in URLs requires encoding of `+`, `/` and `=` characters into special percent-encoded hexadecimal sequences (`+` becomes `%2B`, `/` becomes `%2F` and `=` becomes `%3D`), which makes the string unnecessarily longer.  
For this reason, __modified Base64__ for URL variants exist, where the `+` and `/` characters of standard __Base64__ are respectively replaced by `-` and `_`, so that using URL encoders/decoders are no longer necessary and have no impact on the length of the encoded value  
***
Both above solutions lack a very usefull property for URLs. __Double Click mouse selection!__  
***

## Definition
__Escape64__ is a variable length variant of __Base64__ that solves this in a intiutive way.  
`_` is used as an escape character and we define the following escape sequences

        __      beginging of an Escape64 sequence (optional)
        
        _p      encodes a (+) of Base64
        _d      encodes a (/) of Base64
        _q      encodes a (=) pad character of Base64
        
        _b      marks breaks inside an Escape64 sequence (optional)
        
        _*      Reserved. Where (*) can be any char not expicitly mentioned above.   


## Example Implementation

    var x = 'asdf+ff/f+ff/dd+ddAd==';                                         //base64 value
    var y = x.replace(/[+]/g,'_p').replace(/[\/]/g,'_d').replace(/[=]/g,'_q');//escape64 value encode
    var z = y.replace(/_p/g,'+').replace(/_d/g,'/').replace(/_q/g,'=');       //escape64 value decode
    
    console.log(x, y, z);
    console.log(z);
    console.log(x==z);
    
    

## Usage
        npm install escape64

See `example.js`


## Links
https://en.wikipedia.org/wiki/Base64
