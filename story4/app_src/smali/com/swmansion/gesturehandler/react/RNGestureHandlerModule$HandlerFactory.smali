.class abstract Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;
.super Ljava/lang/Object;
.source "RNGestureHandlerModule.java"

# interfaces
.implements Lcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "HandlerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/swmansion/gesturehandler/GestureHandler;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$1;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ")V"
        }
    .end annotation

    const-string v0, "shouldCancelWhenOutside"

    .line 95
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/GestureHandler;->setShouldCancelWhenOutside(Z)Lcom/swmansion/gesturehandler/GestureHandler;

    :cond_0
    const-string v0, "enabled"

    .line 98
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/GestureHandler;->setEnabled(Z)Lcom/swmansion/gesturehandler/GestureHandler;

    :cond_1
    const-string v0, "hitSlop"

    .line 101
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    invoke-static {p1, p2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->access$000(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/facebook/react/bridge/ReadableMap;)V

    :cond_2
    return-void
.end method

.method public abstract create(Landroid/content/Context;)Lcom/swmansion/gesturehandler/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation
.end method

.method public extractEventData(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/WritableMap;",
            ")V"
        }
    .end annotation

    .line 108
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getNumberOfPointers()I

    move-result p1

    int-to-double v0, p1

    const-string p1, "numberOfPointers"

    invoke-interface {p2, p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-void
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method
