.class Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PanGestureHandlerFactory;
.super Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;
.source "RNGestureHandlerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PanGestureHandlerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory<",
        "Lcom/swmansion/gesturehandler/PanGestureHandler;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 238
    invoke-direct {p0, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;-><init>(Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$1;)V
    .locals 0

    .line 238
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PanGestureHandlerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic configure(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 238
    check-cast p1, Lcom/swmansion/gesturehandler/PanGestureHandler;

    invoke-virtual {p0, p1, p2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PanGestureHandlerFactory;->configure(Lcom/swmansion/gesturehandler/PanGestureHandler;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public configure(Lcom/swmansion/gesturehandler/PanGestureHandler;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 4

    .line 256
    invoke-super {p0, p1, p2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;->configure(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string v0, "activeOffsetXStart"

    .line 258
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 259
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->setActiveOffsetXStart(F)Lcom/swmansion/gesturehandler/PanGestureHandler;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "activeOffsetXEnd"

    .line 262
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 263
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->setActiveOffsetXEnd(F)Lcom/swmansion/gesturehandler/PanGestureHandler;

    const/4 v0, 0x1

    :cond_1
    const-string v1, "failOffsetXStart"

    .line 266
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 267
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->setFailOffsetXStart(F)Lcom/swmansion/gesturehandler/PanGestureHandler;

    const/4 v0, 0x1

    :cond_2
    const-string v1, "failOffsetXEnd"

    .line 270
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 271
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->setFailOffsetXEnd(F)Lcom/swmansion/gesturehandler/PanGestureHandler;

    const/4 v0, 0x1

    :cond_3
    const-string v1, "activeOffsetYStart"

    .line 274
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 275
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->setActiveOffsetYStart(F)Lcom/swmansion/gesturehandler/PanGestureHandler;

    const/4 v0, 0x1

    :cond_4
    const-string v1, "activeOffsetYEnd"

    .line 278
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 279
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->setActiveOffsetYEnd(F)Lcom/swmansion/gesturehandler/PanGestureHandler;

    const/4 v0, 0x1

    :cond_5
    const-string v1, "failOffsetYStart"

    .line 282
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 283
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->setFailOffsetYStart(F)Lcom/swmansion/gesturehandler/PanGestureHandler;

    const/4 v0, 0x1

    :cond_6
    const-string v1, "failOffsetYEnd"

    .line 286
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 287
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->setFailOffsetYEnd(F)Lcom/swmansion/gesturehandler/PanGestureHandler;

    const/4 v0, 0x1

    :cond_7
    const-string v1, "minVelocity"

    .line 291
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 294
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->setMinVelocity(F)Lcom/swmansion/gesturehandler/PanGestureHandler;

    const/4 v0, 0x1

    :cond_8
    const-string v1, "minVelocityX"

    .line 297
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 298
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->setMinVelocityX(F)Lcom/swmansion/gesturehandler/PanGestureHandler;

    const/4 v0, 0x1

    :cond_9
    const-string v1, "minVelocityY"

    .line 301
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 302
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->setMinVelocityY(F)Lcom/swmansion/gesturehandler/PanGestureHandler;

    const/4 v0, 0x1

    :cond_a
    const-string v1, "minDist"

    .line 308
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 309
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->setMinDist(F)Lcom/swmansion/gesturehandler/PanGestureHandler;

    goto :goto_1

    :cond_b
    if-eqz v0, :cond_c

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 311
    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->setMinDist(F)Lcom/swmansion/gesturehandler/PanGestureHandler;

    :cond_c
    :goto_1
    const-string v0, "minPointers"

    .line 314
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 315
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->setMinPointers(I)Lcom/swmansion/gesturehandler/PanGestureHandler;

    :cond_d
    const-string v0, "maxPointers"

    .line 317
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 318
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->setMaxPointers(I)Lcom/swmansion/gesturehandler/PanGestureHandler;

    :cond_e
    const-string v0, "avgTouches"

    .line 320
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "avgTouches"

    .line 321
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/swmansion/gesturehandler/PanGestureHandler;->setAverageTouches(Z)Lcom/swmansion/gesturehandler/PanGestureHandler;

    :cond_f
    return-void
.end method

.method public bridge synthetic create(Landroid/content/Context;)Lcom/swmansion/gesturehandler/GestureHandler;
    .locals 0

    .line 238
    invoke-virtual {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PanGestureHandlerFactory;->create(Landroid/content/Context;)Lcom/swmansion/gesturehandler/PanGestureHandler;

    move-result-object p1

    return-object p1
.end method

.method public create(Landroid/content/Context;)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 1

    .line 251
    new-instance v0, Lcom/swmansion/gesturehandler/PanGestureHandler;

    invoke-direct {v0, p1}, Lcom/swmansion/gesturehandler/PanGestureHandler;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic extractEventData(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 0

    .line 238
    check-cast p1, Lcom/swmansion/gesturehandler/PanGestureHandler;

    invoke-virtual {p0, p1, p2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PanGestureHandlerFactory;->extractEventData(Lcom/swmansion/gesturehandler/PanGestureHandler;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public extractEventData(Lcom/swmansion/gesturehandler/PanGestureHandler;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 3

    .line 327
    invoke-super {p0, p1, p2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;->extractEventData(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/facebook/react/bridge/WritableMap;)V

    .line 328
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getLastRelativePositionX()F

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    float-to-double v0, v0

    const-string v2, "x"

    invoke-interface {p2, v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 329
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getLastRelativePositionY()F

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    float-to-double v0, v0

    const-string v2, "y"

    invoke-interface {p2, v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 330
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getLastAbsolutePositionX()F

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    float-to-double v0, v0

    const-string v2, "absoluteX"

    invoke-interface {p2, v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 331
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getLastAbsolutePositionY()F

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    float-to-double v0, v0

    const-string v2, "absoluteY"

    invoke-interface {p2, v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 332
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/PanGestureHandler;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    float-to-double v0, v0

    const-string v2, "translationX"

    invoke-interface {p2, v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 333
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/PanGestureHandler;->getTranslationY()F

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    float-to-double v0, v0

    const-string v2, "translationY"

    invoke-interface {p2, v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 334
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/PanGestureHandler;->getVelocityX()F

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    float-to-double v0, v0

    const-string v2, "velocityX"

    invoke-interface {p2, v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 335
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/PanGestureHandler;->getVelocityY()F

    move-result p1

    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p1

    float-to-double v0, p1

    const-string p1, "velocityY"

    invoke-interface {p2, p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "PanGestureHandler"

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/swmansion/gesturehandler/PanGestureHandler;",
            ">;"
        }
    .end annotation

    .line 241
    const-class v0, Lcom/swmansion/gesturehandler/PanGestureHandler;

    return-object v0
.end method
