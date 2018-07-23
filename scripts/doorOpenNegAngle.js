// Adapted from Menithal (https://forums.highfidelity.com/u/Menithal)
// Licensed under GPLv3

(function() {
  var doorAngle = 70;
  var animTime = 1;
  var opened = false;
  var stopped = true;
  var doorId;
  var curAngle = 0;
  var yaw = 0.0; // Z rotation in Blender
  //var roll = 0.0; // Y
  //var pitch = 0.0; // X

  function moveDoor(deltaTime) {
    if (!stopped) {
      var deltaAngle = (doorAngle * (deltaTime / animTime));

      if (!opened) {
        curAngle += deltaAngle;
        if (curAngle <= doorAngle) curAngle = doorAngle;
      } else {
        curAngle -= deltaAngle;
        if (curAngle >= 0) curAngle = 0;
      }

      if (curAngle >= doorAngle && !opened || curAngle <= 0 && opened) {
          rotation = Quat.fromPitchYawRollDegrees(pitch, yaw + curAngle, roll);

          var newProps = { rotation: rotation };
          Entities.editEntity(doorId, newProps);
      } else {
          opened = !opened;
          stopped = true;
          Script.update.disconnect(moveDoor);
      }
    }
  }

  this.clickDownOnEntity = function(entityID, mouseEvent) {
    if (stopped) {
        doorId = entityID;
        stopped = false;
        Script.update.connect(moveDoor);
    }
  }
});
