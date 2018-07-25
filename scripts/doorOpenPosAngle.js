// Adapted from Menithal (https://forums.highfidelity.com/u/Menithal)
// Licensed under GPLv3

(function() {
    var doorAngle = 70.0;
    var animTime = 1.0;
    var isOpened = false;
    var isStopped = true;
    var doorNum;
    var curAngle = 0.0;
    var yaw = 0.0; // Z rotation in Blender
    var roll = 0.0; // Y
    var pitch = 0.0; // X

    function moveDoor(deltaTime) {
        if (!isStopped) {
        var deltaAngle = (doorAngle * (deltaTime / animTime));

        if (!isOpened) {
            curAngle += deltaAngle;
            if (curAngle >= doorAngle) curAngle = doorAngle;
        } else {
            curAngle -= deltaAngle;
            if (curAngle <= 0) curAngle = 0;
        }

        if (curAngle <= doorAngle && !isOpened || curAngle >= 0 && isOpened) {
            rotation = Quat.fromPitchYawRollDegrees(pitch, yaw + curAngle, roll);

            var newProps = { rotation: rotation };
            Entities.editEntity(doorNum, newProps);
        } else {
            isOpened = !isOpened;
            isStopped = true;
            Script.update.disconnect(moveDoor);
        }
        }
    }

    this.clickDownOnEntity = function(entityID, mouseEvent) {
        if (isStopped) {
            doorNum = entityID;
            isStopped = false;
            Script.update.connect(moveDoor);
        }
    }
});
