// Licensed under GPLv3

(function() {
    var MOVE_TIME = 1.0;
    var RADIUS = 5.0;
    var CENTER_POSITION;
    var MIN_BOUNDS;
    var MAX_BOUNDS;
    var MIN_IDLE_INTERVAL = 0.0;
    var MAX_IDLE_INTERVAL = 5.0;

    var MOVE_X = 0;
    var MOVE_Z = 1;
    var MOVE_DIAGONAL = 2;
    var MOVE_SENTINEL = 3;

    var currentPosition;
    var currentIdleTime = 0.0;
    var determineMove = MOVE_X;
    var targetPosition;
    var idleInterval
    var isMoving = false;
    var isMovingX = false;
    var isMovingZ = false;
    var boarNum;

    function randRange(min, max) {
        return Math.random() * (max - min) + min;
    }

    function randVec3() {
        return {
            x: randRange(MIN.x, MAX.x),
            y: currentPosition.y,
            z: randRange(MIN.z, MAX.z)
        };
    }

    function move(deltaTime) {
        if (isMoving) {
            var deltaMoveTime = deltaTime / MOVE_TIME;
            var deltaPosition;

            if (determineMove == MOVE_X) {
                deltaPosition = { x: deltaMoveTime, y: 0, z: 0 };
            } else if (determineMove == MOVE_Z) {
                deltaPosition = { x: 0, y: 0, z: deltaMoveTime };
            } else { // move diagonally
                deltaPosition = { x: deltaMoveTime, y: 0, z: deltaMoveTime };
            }

            currentPosition = Vec3.sum(currentPosition, deltaPosition);
            if (currentPosition.x <= MIN_BOUNDS.x) {
                currentPosition.x = MIN_BOUNDS.x;
            }
            if (currentPosition.z <= MIN_BOUNDS.z) {
                currentPosition.z = MIN_BOUNDS.z;
            }
            if (currentPosition.x >= MAX_BOUNDS.x) {
                currentPosition.x = MAX_BOUNDS.x;
            }
            if (currentPosition.z >= MAX_BOUNDS.z) {
                currentPosition.z = MAX_BOUNDS.z;
            }

            var newProps = { position: currentPosition };
            Entities.editEntity(boarNum, newProps);

            if (Vec3.equal(
        }
    }

    function idle(deltaTime) {
        if (!isMoving) {
        }
    }

    function doAI(deltaTime) {
        if (isMoving) {
            targetPosition = randVec3();
            determineMove = Math.floor(randRange(MOVE_X, MOVE_SENTINEL));
            Script.update.connect(move);
        } else {
            idleInterval = randRange(MIN_IDLE_INTERVAL, MAX_IDLE_INTERVAL);
            Script.update.connect(idle);
        }
    }

    this.preload = function(entityID) {
        currentPosition = Entities.getEntityProperties(entityID, "position").position;
        CENTER_POSITION = currentPosition;
        boarNum = entityID;
        MIN_BOUNDS = {
            x: CENTER_POSITION.x - RADIUS,
            y: CENTER_POSITION.y,
            z: CENTER_POSITION.z - RADIUS
        };
        MAX_BOUNDS = {
            x: CENTER_POSITION.x + RADIUS,
            y: CENTER_POSITION.y,
            z: CENTER_POSITION.z + RADIUS
        };
        isMoving = true; // Let's start with it moving
        Script.update.connect(doAI);
    };
});
