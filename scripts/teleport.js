// Licensed under GPLv3

(function() {
    var RECIPIENT_ENTITY;

    this.clickDownOnEntity = function(entityID, mouseEvent) {
        MyAvatar.position = RECIPIENT_ENTITY.position;
        MyAvatar.rotation = RECIPIENT_ENTITY.rotation;
    }
});
