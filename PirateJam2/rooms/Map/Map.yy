{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "Map",
  "creationCodeFile": "",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_34CC8B6C","path":"rooms/Map/Map.yy",},
    {"name":"inst_6DAD2B6F","path":"rooms/Map/Map.yy",},
    {"name":"inst_79E44F24","path":"rooms/Map/Map.yy",},
    {"name":"inst_1F0B942F","path":"rooms/Map/Map.yy",},
    {"name":"inst_736187AD","path":"rooms/Map/Map.yy",},
    {"name":"inst_4EE4EFF4","path":"rooms/Map/Map.yy",},
    {"name":"inst_2DA16669","path":"rooms/Map/Map.yy",},
    {"name":"inst_4BC1FF1B","path":"rooms/Map/Map.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Walls","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_34CC8B6C","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"collisionBox","path":"objects/collisionBox/collisionBox.yy",},"properties":[],"rotation":0.0,"scaleX":5.0,"scaleY":1.0,"x":0.0,"y":64.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6DAD2B6F","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"collisionBox","path":"objects/collisionBox/collisionBox.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":96.0,"y":192.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_79E44F24","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"collisionBox","path":"objects/collisionBox/collisionBox.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":5.5,"x":256.0,"y":384.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1F0B942F","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"collisionBox","path":"objects/collisionBox/collisionBox.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":672.0,"y":256.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Enemy","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4EE4EFF4","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"o_enemy","path":"objects/o_enemy/o_enemy.yy",},"properties":[],"rotation":0.0,"scaleX":-1.0,"scaleY":1.0,"x":832.0,"y":320.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Player","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_736187AD","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"Player","path":"objects/Player/Player.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":480.0,"y":320.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4BC1FF1B","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"PlayerControl","path":"objects/PlayerControl/PlayerControl.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":480.0,"y":448.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_2DA16669","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"o_game","path":"objects/o_game/o_game.yy",},"properties":[],"rotation":0.5974163,"scaleX":1.0,"scaleY":1.0,"x":544.0,"y":-96.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4278190080,"depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 720,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 1080,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":720,"hspeed":-1,"hview":720,"inherit":false,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":1080,"wview":1080,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": true,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}