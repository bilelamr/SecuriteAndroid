.class Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$RotationGestureHandlerFactory;
.super Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;
.source "RNGestureHandlerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RotationGestureHandlerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory<",
        "Lcom/swmansion/gesturehandler/RotationGestureHandler;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 401
    invoke-direct {p0, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;-><init>(Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$1;)V
    .locals 0

    .line 401
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$RotationGestureHandlerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Landroid/content/Context;)Lcom/swmansion/gesturehandler/GestureHandler;
    .locals 0

    .line 401
    invoke-virtual {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$RotationGestureHandlerFactory;->create(Landroid/content/Context;)Lcom/swmansion/gesturehandler/RotationGestureHandler;

    move-result-object p1

    return-object p1
.end method

.method public create(Landroid/content/Context;)Lcom/swmansion/gesturehandler/RotationGestureHandler;
    .locals 0

    .line 414
    new-instance p1, Lcom/swmansion/gesturehandler/RotationGestureHandler;

    invoke-direct {p1}, Lcom/swmansion/gesturehandler/RotationGestureHandler;-><init>()V

    return-object p1
.end method

.method public bridge synthetic extractEventData(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 0

    .line 401
    check-cast p1, Lcom/swmansion/gesturehandler/RotationGestureHandler;

    invoke-virtual {p0, p1, p2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$RotationGestureHandlerFactory;->extractEventData(Lcom/swmansion/gesturehandler/RotationGestureHandler;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public extractEventData(Lcom/swmansion/gesturehandler/RotationGestureHandler;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 3

    .line 419
    invoke-super {p0, p1, p2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;->extractEventData(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/facebook/react/bridge/WritableMap;)V

    .line 420
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/RotationGestureHandler;->getRotation()D

    move-result-wide v0

    const-string v2, "rotation"

    invoke-interface {p2, v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 421
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/RotationGestureHandler;->getAnchorX()F

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    float-to-double v0, v0

    const-string v2, "anchorX"

    invoke-interface {p2, v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 422
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/RotationGestureHandler;->getAnchorY()F

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    float-to-double v0, v0

    const-string v2, "anchorY"

    invoke-interface {p2, v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 423
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/RotationGestureHandler;->getVelocity()D

    move-result-wide v0

    const-string p1, "velocity"

    invoke-interface {p2, p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RotationGestureHandler"

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/swmansion/gesturehandler/RotationGestureHandler;",
            ">;"
        }
    .end annotation

    .line 404
    const-class v0, Lcom/swmansion/gesturehandler/RotationGestureHandler;

    return-object v0
.end method
