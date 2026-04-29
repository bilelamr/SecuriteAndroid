.class public Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView;
.super Lcom/facebook/react/views/view/ReactViewGroup;
.source "RNGestureHandlerRootView.java"


# instance fields
.field private mRootHelper:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView;->mRootHelper:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    invoke-virtual {v0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 39
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 22
    invoke-super {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->onAttachedToWindow()V

    .line 23
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView;->mRootHelper:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    invoke-direct {v0, v1, p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;-><init>(Lcom/facebook/react/bridge/ReactContext;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView;->mRootHelper:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView;->mRootHelper:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    invoke-virtual {v0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->requestDisallowInterceptTouchEvent(Z)V

    .line 45
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public tearDown()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView;->mRootHelper:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->tearDown()V

    :cond_0
    return-void
.end method
