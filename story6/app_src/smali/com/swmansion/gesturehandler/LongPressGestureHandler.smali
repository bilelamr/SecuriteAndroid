.class public Lcom/swmansion/gesturehandler/LongPressGestureHandler;
.super Lcom/swmansion/gesturehandler/GestureHandler;
.source "LongPressGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/GestureHandler<",
        "Lcom/swmansion/gesturehandler/LongPressGestureHandler;",
        ">;"
    }
.end annotation


# static fields
.field private static DEFAULT_MAX_DIST_DP:F = 10.0f


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMaxDistSq:F

.field private mMinDurationMs:J

.field private mStartX:F

.field private mStartY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandler;-><init>()V

    const-wide/16 v0, 0x1f4

    .line 12
    iput-wide v0, p0, Lcom/swmansion/gesturehandler/LongPressGestureHandler;->mMinDurationMs:J

    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Lcom/swmansion/gesturehandler/GestureHandler;->setShouldCancelWhenOutside(Z)Lcom/swmansion/gesturehandler/GestureHandler;

    .line 19
    sget v0, Lcom/swmansion/gesturehandler/LongPressGestureHandler;->DEFAULT_MAX_DIST_DP:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/swmansion/gesturehandler/LongPressGestureHandler;->mMaxDistSq:F

    return-void
.end method


# virtual methods
.method protected onHandle(Landroid/view/MotionEvent;)V
    .locals 4

    .line 33
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->begin()V

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/swmansion/gesturehandler/LongPressGestureHandler;->mStartX:F

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/swmansion/gesturehandler/LongPressGestureHandler;->mStartY:F

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/LongPressGestureHandler;->mHandler:Landroid/os/Handler;

    .line 38
    iget-object v0, p0, Lcom/swmansion/gesturehandler/LongPressGestureHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/swmansion/gesturehandler/LongPressGestureHandler$1;

    invoke-direct {v1, p0}, Lcom/swmansion/gesturehandler/LongPressGestureHandler$1;-><init>(Lcom/swmansion/gesturehandler/LongPressGestureHandler;)V

    iget-wide v2, p0, Lcom/swmansion/gesturehandler/LongPressGestureHandler;->mMinDurationMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v1, :cond_3

    .line 46
    iget-object p1, p0, Lcom/swmansion/gesturehandler/LongPressGestureHandler;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 48
    iput-object v0, p0, Lcom/swmansion/gesturehandler/LongPressGestureHandler;->mHandler:Landroid/os/Handler;

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 51
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->end()V

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->fail()V

    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/swmansion/gesturehandler/LongPressGestureHandler;->mStartX:F

    sub-float/2addr v0, v1

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v1, p0, Lcom/swmansion/gesturehandler/LongPressGestureHandler;->mStartY:F

    sub-float/2addr p1, v1

    mul-float v0, v0, v0

    mul-float p1, p1, p1

    add-float/2addr v0, p1

    .line 60
    iget p1, p0, Lcom/swmansion/gesturehandler/LongPressGestureHandler;->mMaxDistSq:F

    cmpl-float p1, v0, p1

    if-lez p1, :cond_5

    .line 61
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 62
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->cancel()V

    goto :goto_0

    .line 64
    :cond_4
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->fail()V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onStateChange(II)V
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/swmansion/gesturehandler/LongPressGestureHandler;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 74
    iput-object p2, p0, Lcom/swmansion/gesturehandler/LongPressGestureHandler;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public setMaxDist(F)Lcom/swmansion/gesturehandler/LongPressGestureHandler;
    .locals 0

    mul-float p1, p1, p1

    .line 27
    iput p1, p0, Lcom/swmansion/gesturehandler/LongPressGestureHandler;->mMaxDistSq:F

    return-object p0
.end method

.method public setMinDurationMs(J)V
    .locals 0

    .line 23
    iput-wide p1, p0, Lcom/swmansion/gesturehandler/LongPressGestureHandler;->mMinDurationMs:J

    return-void
.end method
