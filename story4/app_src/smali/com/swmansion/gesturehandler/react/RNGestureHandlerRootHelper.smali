.class public Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;
.super Ljava/lang/Object;
.source "RNGestureHandlerRootHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;
    }
.end annotation


# instance fields
.field private final mContext:Lcom/facebook/react/bridge/ReactContext;

.field private final mJSGestureHandler:Lcom/swmansion/gesturehandler/GestureHandler;

.field private final mOrchestrator:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;

.field private mPassingTouch:Z

.field private final mReactRootView:Lcom/facebook/react/ReactRootView;

.field private mShouldIntercept:Z


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;Landroid/view/ViewGroup;)V
    .locals 5

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mShouldIntercept:Z

    .line 26
    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mPassingTouch:Z

    .line 42
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 43
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 48
    const-class v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;

    invoke-virtual {p1, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    check-cast v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;

    .line 49
    invoke-virtual {v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->getRegistry()Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

    move-result-object v2

    .line 51
    invoke-static {p2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->findRootViewTag(Landroid/view/ViewGroup;)Lcom/facebook/react/ReactRootView;

    move-result-object v3

    iput-object v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mReactRootView:Lcom/facebook/react/ReactRootView;

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GESTURE HANDLER] Initialize gesture handler for root view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mReactRootView:Lcom/facebook/react/ReactRootView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ReactNative"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mContext:Lcom/facebook/react/bridge/ReactContext;

    .line 58
    new-instance p1, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;

    new-instance v3, Lcom/swmansion/gesturehandler/react/RNViewConfigurationHelper;

    invoke-direct {v3}, Lcom/swmansion/gesturehandler/react/RNViewConfigurationHelper;-><init>()V

    invoke-direct {p1, p2, v2, v3}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;-><init>(Landroid/view/ViewGroup;Lcom/swmansion/gesturehandler/GestureHandlerRegistry;Lcom/swmansion/gesturehandler/ViewConfigurationHelper;)V

    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mOrchestrator:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;

    .line 60
    iget-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mOrchestrator:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;

    const p2, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, p2}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->setMinimumAlphaForTraversal(F)V

    .line 62
    new-instance p1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;-><init>(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$1;)V

    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mJSGestureHandler:Lcom/swmansion/gesturehandler/GestureHandler;

    .line 63
    iget-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mJSGestureHandler:Lcom/swmansion/gesturehandler/GestureHandler;

    neg-int p2, v0

    invoke-virtual {p1, p2}, Lcom/swmansion/gesturehandler/GestureHandler;->setTag(I)V

    .line 64
    iget-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mJSGestureHandler:Lcom/swmansion/gesturehandler/GestureHandler;

    invoke-virtual {v2, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;->registerHandler(Lcom/swmansion/gesturehandler/GestureHandler;)V

    .line 65
    iget-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mJSGestureHandler:Lcom/swmansion/gesturehandler/GestureHandler;

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getTag()I

    move-result p1

    invoke-virtual {v2, p1, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;->attachHandlerToView(II)Z

    .line 67
    invoke-virtual {v1, p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->registerRootHelper(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V

    return-void

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expect view tag to be set for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$102(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mShouldIntercept:Z

    return p1
.end method

.method static synthetic access$200(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)Lcom/facebook/react/ReactRootView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mReactRootView:Lcom/facebook/react/ReactRootView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->tryCancelAllHandlers()V

    return-void
.end method

.method private static findRootViewTag(Landroid/view/ViewGroup;)Lcom/facebook/react/ReactRootView;
    .locals 3

    .line 29
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_0

    .line 31
    instance-of v1, v0, Lcom/facebook/react/ReactRootView;

    if-nez v1, :cond_0

    .line 32
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 38
    check-cast v0, Lcom/facebook/react/ReactRootView;

    return-object v0

    .line 35
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has not been mounted under ReactRootView"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private tryCancelAllHandlers()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mJSGestureHandler:Lcom/swmansion/gesturehandler/GestureHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mJSGestureHandler:Lcom/swmansion/gesturehandler/GestureHandler;

    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/GestureHandler;->activate()V

    .line 136
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mJSGestureHandler:Lcom/swmansion/gesturehandler/GestureHandler;

    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/GestureHandler;->end()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mPassingTouch:Z

    .line 121
    iget-object v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mOrchestrator:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;

    invoke-virtual {v1, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    .line 122
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mPassingTouch:Z

    .line 124
    iget-boolean v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mShouldIntercept:Z

    if-eqz v1, :cond_0

    return v0

    :cond_0
    return p1
.end method

.method public getRootView()Lcom/facebook/react/ReactRootView;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mReactRootView:Lcom/facebook/react/ReactRootView;

    return-object v0
.end method

.method handleSetJSResponder(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 142
    new-instance p1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$1;

    invoke-direct {p1, p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$1;-><init>(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V

    invoke-static {p1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mOrchestrator:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mPassingTouch:Z

    if-nez p1, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->tryCancelAllHandlers()V

    :cond_0
    return-void
.end method

.method public tearDown()V
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GESTURE HANDLER] Tearing down gesture handler registered for root view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mReactRootView:Lcom/facebook/react/ReactRootView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReactNative"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mContext:Lcom/facebook/react/bridge/ReactContext;

    const-class v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;

    .line 75
    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->getRegistry()Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

    move-result-object v1

    iget-object v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mJSGestureHandler:Lcom/swmansion/gesturehandler/GestureHandler;

    invoke-virtual {v2}, Lcom/swmansion/gesturehandler/GestureHandler;->getTag()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;->dropHandler(I)V

    .line 76
    invoke-virtual {v0, p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->unregisterRootHelper(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V

    return-void
.end method
