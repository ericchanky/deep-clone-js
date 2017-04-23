# deep-clone-json
Clone JSON Object

credit to [http://stackoverflow.com/a/28222333/6056725](http://stackoverflow.com/a/28222333/6056725)

## Installation
```bash
npm install -S github:ericchanky/deep-clone-json#v1.1.0
```

## Usage
### Browser
```html
<script type="text/javascript" src="deep-clone.js"></script>
<script>
var foo = { x: 1 }
var cloned = foo.deepClone()
</script>
```

### CommonJS
```js
var deepClone = require('deep-clone-json')
var foo = { x: 2 }
var cloned = deepClone(foo)
```

or add to object prototype
```js
Object.prototype.deepClone = require('deep-clone-json')
var foo = { x: 3 }
var cloned = foo.deepClone()
```


## Test
```bash
npm test
```

---

**Authur:** EricChanKY
