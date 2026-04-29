.class public Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "RNGestureHandlerStateChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$SynchronizedPool<",
            "Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mExtraData:Lcom/facebook/react/bridge/WritableMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/Event;-><init>()V

    return-void
.end method

.method private init(Lcom/swmansion/gesturehandler/GestureHandler;IILcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;)V
    .locals 1

    .line 45
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-super {p0, v0}, Lcom/facebook/react/uimanager/events/Event;->init(I)V

    .line 46
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->mExtraData:Lcom/facebook/react/bridge/WritableMap;

    if-eqz p4, :cond_0

    .line 48
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->mExtraData:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {p4, p1, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;->extractEventData(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/facebook/react/bridge/WritableMap;)V

    .line 50
    :cond_0
    iget-object p4, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->mExtraData:Lcom/facebook/react/bridge/WritableMap;

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getTag()I

    move-result p1

    const-string v0, "handlerTag"

    invoke-interface {p4, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 51
    iget-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->mExtraData:Lcom/facebook/react/bridge/WritableMap;

    const-string p4, "state"

    invoke-interface {p1, p4, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 52
    iget-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->mExtraData:Lcom/facebook/react/bridge/WritableMap;

    const-string p2, "oldState"

    invoke-interface {p1, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static obtain(Lcom/swmansion/gesturehandler/GestureHandler;IILcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;)Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;
    .locals 1

    .line 27
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;

    invoke-direct {v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;-><init>()V

    .line 31
    :cond_0
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->init(Lcom/swmansion/gesturehandler/GestureHandler;IILcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;)V

    return-object v0
.end method


# virtual methods
.method public canCoalesce()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 3

    .line 80
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/Event;->getViewTag()I

    move-result v0

    iget-object v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->mExtraData:Lcom/facebook/react/bridge/WritableMap;

    const-string v2, "onGestureHandlerStateChange"

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public getCoalescingKey()S
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "onGestureHandlerStateChange"

    return-object v0
.end method

.method public onDispose()V
    .locals 1

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->mExtraData:Lcom/facebook/react/bridge/WritableMap;

    .line 58
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method
