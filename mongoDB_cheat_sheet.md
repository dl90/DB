# MongoDB

```mongo
mongo

show dbs

use db-name

show myCollections

newDoc = { "field": "value"}

db.myCollection.insertOne(newDoc)
```

```mongo
things = [
  { name: "test1", data:"abc" },
  { name: "test2", data:"efg" }
]

db.myCollection.insert(things)
db.myCollection.bulkWrite([
  { insertOne: { name: "test3", data:"hij" } },
  { updateOne : {
    filter: { name : "test1" },
    update: { $set : { data: "123" } }
    }
  }
])
```

`_id` is the primary key for each document. If not specifically assigned, an automatically generated `ObjectId` will be assigned.

```mongo
x = ObjectId()
x.getTimestamp()
```

CRUD OPS

```mongo
db.myCollection.insert()
db.myCollection.insertOne()
db.myCollection.insertMany()

db.myCollection.findOne()
db.myCollection.find()

db.myCollection.updateOne()
db.myCollection.updateMany()
db.myCollection.update()
db.myCollection.replaceOne()

db.myCollection.deleteOne()
db.myCollection.deleteMany()
db.myCollection.remove()
```

| Common ops | Desc   |
| ---------- | ------ |
| $eq, $nq   | =, !=  |
| $gt, $gte  | >, >=  |
| $lt, $lte  | <, <=  |
| $in, $nin  | in, !in|
| $and       | &&     |
| $or        | \|\|   |

```mongo
db.myCollection.find({
  $and: [
    { name: "test1"},
    { data: { $in: [ "abc", "def", "ghi" ]}}
  ]
})

db.myCollection.update(
  { name: "test2" },
  { data: "lmn" },
  { multi: true }
)

db.myCollection.remove(
  { name: "test3" }, true
).comment("removes first matching, default removes all")
```
