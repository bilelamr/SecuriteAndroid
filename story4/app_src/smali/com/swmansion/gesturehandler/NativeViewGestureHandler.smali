.class public Lcom/swmansion/gesturehandler/NativeViewGestureHandler;
.super Lcom/swmansion/gesturehandler/GestureHandler;
.source "NativeViewGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/GestureHandler<",
        "Lcom/swmansion/gesturehandler/NativeViewGestureHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private mDisallowInterruption:Z

.field private mShouldActivateOnStart:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandler;-><init>()V

    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Lcom/swmansion/gesturehandler/GestureHandler;->setShouldCancelWhenOutside(Z)Lcom/swmansion/gesturehandler/GestureHandler;

    return-void
.end method

.method private static tryIntercept(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 97
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected onCancel()V
    .locals 8

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v0, v2

    .line 106
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x3

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 108
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method protected onHandle(Landroid/view/MotionEvent;)V
    .locals 5

    .line 72
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->getView()Landroid/view/View;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v1

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 75
    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    if-eqz v1, :cond_0

    if-ne v1, v3, :cond_1

    .line 76
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->activate()V

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->end()V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_4

    if-ne v1, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    .line 92
    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 81
    :cond_4
    :goto_0
    iget-boolean v2, p0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->mShouldActivateOnStart:Z

    if-eqz v2, :cond_5

    .line 82
    invoke-static {v0, p1}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->tryIntercept(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 83
    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 84
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->activate()V

    goto :goto_1

    .line 85
    :cond_5
    invoke-static {v0, p1}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->tryIntercept(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 86
    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 87
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->activate()V

    goto :goto_1

    :cond_6
    if-eq v1, v3, :cond_7

    .line 89
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->begin()V

    :cond_7
    :goto_1
    return-void
.end method

.method public setDisallowInterruption(Z)Lcom/swmansion/gesturehandler/NativeViewGestureHandler;
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->mDisallowInterruption:Z

    return-object p0
.end method

.method public setShouldActivateOnStart(Z)Lcom/swmansion/gesturehandler/NativeViewGestureHandler;
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->mShouldActivateOnStart:Z

    return-object p0
.end method

.method public shouldBeCancelledBy(Lcom/swmansion/gesturehandler/GestureHandler;)Z
    .locals 0

    .line 67
    iget-boolean p1, p0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->mDisallowInterruption:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/GestureHandler;)Z
    .locals 5

    .line 39
    instance-of v0, p1, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    .line 44
    move-object v0, p1

    check-cast v0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;

    .line 45
    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v3

    if-ne v3, v2, :cond_0

    iget-boolean v0, v0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->mDisallowInterruption:Z

    if-eqz v0, :cond_0

    return v1

    .line 51
    :cond_0
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/NativeViewGestureHandler;->mDisallowInterruption:Z

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    .line 52
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v4

    .line 53
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result p1

    if-ne v4, v2, :cond_1

    if-ne p1, v2, :cond_1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    if-ne v4, v2, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public shouldRequireToWaitForFailure(Lcom/swmansion/gesturehandler/GestureHandler;)Z
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/swmansion/gesturehandler/GestureHandler;->shouldRequireToWaitForFailure(Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result p1

    return p1
.end method
