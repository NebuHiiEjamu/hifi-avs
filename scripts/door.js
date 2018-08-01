// Adapted from Menithal (https://forums.highfidelity.com/u/Menithal)
// Licensed under GPLv3

(function() {
    var DOOR_ANGLE = 70.0;
    var ANIMATION_TIME = 1.0;
    var IS_NEGATIVE_ANGLE = false;
    var SOUND_URL;
    var SOUND;
    var VOLUME = 0.5;

    var isOpened = false;
    var isStopped = true;
    var doorNum;
    var currentAngle = 0.0;
    var yaw = 0.0; // Z rotation in Blender
    var roll = 0.0; // Y
    var pitch = 0.0; // X
    var audioObj;

    this.preload = function(entityID) {
        SOUND = SundCache.getSound(Script.resolvePath(SOUND_URL));
    };

    function moveDoor(deltaTime) {
        if (!isStopped) {
            var deltaAngle = (DOOR_ANGLE * (deltaTime / ANIMATION_TIME));

            if (IS_NEGATIVE_ANGLE) {
                if (!isOpened) {
                    currentAngle -= deltaAngle;
                    if (currentAngle <= DOOR_ANGLE) currentAngle = DOOR_ANGLE;
                } else {
                    currentAngle += deltaAngle;
                    if (currentAngle >= 0) currentAngle = 0;
                }

                if (currentAngle >= DOOR_ANGLE && !isOpened || currentAngle <= 0 && isOpened) {
                    rotation = Quat.fromPitchYawRollDegrees(pitch, yaw - currentAngle, roll);

                    var newProps = { rotation: rotation };
                    Entities.editEntity(doorNum, newProps);
                } else {
                    isOpened = !isOpened;
                    isStopped = true;
                    Script.update.disconnect(moveDoor);
                }
            } else {
                if (!isOpened) {
                    currentAngle += deltaAngle;
                    if (currentAngle <= DOOR_ANGLE) currentAngle = DOOR_ANGLE;
                } else {
                    currentAngle -= deltaAngle;
                    if (currentAngle >= 0) currentAngle = 0;
                }

                if (currentAngle <= DOOR_ANGLE && !isOpened || currentAngle >= 0 && isOpened) {
                    rotation = Quat.fromPitchYawRollDegrees(pitch, yaw + currentAngle, roll);

                    var newProps = { rotation: rotation };
                    Entities.editEntity(doorNum, newProps);
                } else {
                    isOpened = !isOpened;
                    isStopped = true;
                    Script.update.disconnect(moveDoor);
                }
            }
        }
    }

    this.clickDownOnEntity = function(entityID, mouseEvent) {
        if (isStopped) {
            doorNum = entityID;
            isStopped = false;
            audioObj = Audio.playSound(SOUND, {volume: VOLUME,
                position: Entities.getEntityProperties(entityID, "position").position);
            Script.update.connect(moveDoor);
        }
    };
});
