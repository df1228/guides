---
title: "Deploy hugo site to aws using apex up"
date: 2017-11-29T21:42:32+08:00
---

[apex up](https://github.com/apex/up) is a great tool made by tj.  

to know what it is capable of, you can read [introducing apex up](https://medium.com/@tjholowaychuk/introducing-apex-800824ffaa70) and [github.com/apex/up](https://github.com/apex/up).

here is my experience for deploy hugo site with apex up. 

## 1. first make sure you configure aws IAM right.

create a [IAM](https://aws.amazon.com/iam/) user with appropriate permission in aws iam console.

make sure [static-basic](https://github.com/apex/up-examples/tree/master/oss/static-basic) demo can be deployed just using `up`. run `up url -o` to check your deploy.

you can use `up stack delete` to destroy the entire stack.


## 2. create a up.json in hugo site root folder.

```json
{
  "name": "app",
  "profile": "apex",
  "regions": [
    "ap-northeast-1"
  ],
  "type": "static",
  "static": {
    "dir": "public"
  },
  "stages": {
	  "staging": {
      "static": {
        "prefix": "staging/"
      },
      "hooks":{
        "build": "hugo -b /staging/"
      }
    },
    "production": {
      "static": {
        "prefix": "production/"
      },
      "hooks":{
        "build": "hugo -b /production/"
      }
    }
  }
}
```

``` 
# .gitignore
*
!public/**
```

details about config as below:  

  
* profile is the name in your ~/.aws/credetails config in first step.

* region is the region you want to deploy

* type static specifiy up static server to serve it.

* dir specify folder you want to deploy. by default the current directory (.) is served, however you can change this using the dir setting.

* hooks overwrites up default build task. `up config` validate and output configuration with defaults applied.  

* stages config stage overrides.


just change the name for your site when you deploy. maybe profile and regions.

links:  

https://up.docs.apex.sh/#configuration.static_file_serving  
https://up.docs.apex.sh/#configuration.static_file_serving.dynamic_apps  
https://up.docs.apex.sh/#configuration.stage_overrides    
https://up.docs.apex.sh/#configuration.hook_scripts  
https://github.com/apex/up/tree/master/docs   
https://github.com/apex/up-examples  
[youtube for apex up video playlist](https://www.youtube.com/watch?v=1wnSNj-jmo4&index=1&list=PLbFkWVvnVLnRP-E87Tqe6nYVjOk6461o0   )
[Up – deploy serverless apps in seconds](https://medium.freecodecamp.org/up-b3db1ca930ee)  
