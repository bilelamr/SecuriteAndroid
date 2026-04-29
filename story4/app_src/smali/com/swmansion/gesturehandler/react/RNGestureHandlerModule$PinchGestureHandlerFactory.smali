.class Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PinchGestureHandlerFactory;
.super Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;
.source "RNGestureHandlerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PinchGestureHandlerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory<",
        "Lcom/swmansion/gesturehandler/PinchGestureHandler;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 339
    invoke-direct {p0, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;-><init>(Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$1;)V
    .locals 0

    .line 339
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PinchGestureHandlerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Landroid/content/Context;)Lcom/swmansion/gesturehandler/GestureHandler;
    .locals 0

    .line 339
    invoke-virtual {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PinchGestureHandlerFactory;->create(Landroid/content/Context;)Lcom/swmansion/gesturehandler/PinchGestureHandler;

    move-result-object p1

    return-object p1
.end method

.method public create(Landroid/content/Context;)Lcom/swmansion/gesturehandler/PinchGestureHandler;
    .locals 0

    .line 352
    new-instance p1, Lcom/swmansion/gesturehandler/PinchGestureHandler;

    invoke-direct {p1}, Lcom/swmansion/gesturehandler/PinchGestureHandler;-><init>()V

    return-object p1
.end method

.method public bridge synthetic extractEventData(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 0

    .line 339
    check-cast p1, Lcom/swmansion/gesturehandler/PinchGestureHandler;

    invoke-virtual {p0, p1, p2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PinchGestureHandlerFactory;->extractEventData(Lcom/swmansion/gesturehandler/PinchGestureHandler;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public extractEventData(Lcom/swmansion/gesturehandler/PinchGestureHandler;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 3

    .line 357
    invoke-super {p0, p1, p2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;->extractEventData(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/facebook/react/bridge/WritableMap;)V

    .line 358
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/PinchGestureHandler;->getScale()D

    move-result-wide v0

    const-string v2, "scale"

    invoke-interface {p2, v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 359
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/PinchGestureHandler;->getFocalPointX()F

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    float-to-double v0, v0

    const-string v2, "focalX"

    invoke-interface {p2, v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 360
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/PinchGestureHandler;->getFocalPointY()F

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    float-to-double v0, v0

    const-string v2, "focalY"

    invoke-interface {p2, v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 361
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/PinchGestureHandler;->getVelocity()D

    move-result-wide v0

    const-string p1, "velocity"

    invoke-interface {p2, p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "PinchGestureHandler"

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/swmansion/gesturehandler/PinchGestureHandler;",
            ">;"
        }
    .end annotation

    .line 342
    const-class v0, Lcom/swmansion/gesturehandler/PinchGestureHandler;

    return-object v0
.end method
