.class public Lcom/swmansion/gesturehandler/FlingGestureHandler;
.super Lcom/swmansion/gesturehandler/GestureHandler;
.source "FlingGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/GestureHandler<",
        "Lcom/swmansion/gesturehandler/FlingGestureHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private mDirection:I

.field private final mFailDelayed:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mMaxDurationMs:J

.field private mMaxNumberOfPointersSimultaneously:I

.field private mMinAcceptableDelta:J

.field private mNumberOfPointersRequired:I

.field private mStartX:F

.field private mStartY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandler;-><init>()V

    const-wide/16 v0, 0x320

    .line 12
    iput-wide v0, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mMaxDurationMs:J

    const-wide/16 v0, 0xa0

    .line 13
    iput-wide v0, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mMinAcceptableDelta:J

    const/4 v0, 0x1

    .line 14
    iput v0, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mDirection:I

    .line 15
    iput v0, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mNumberOfPointersRequired:I

    .line 21
    new-instance v0, Lcom/swmansion/gesturehandler/FlingGestureHandler$1;

    invoke-direct {v0, p0}, Lcom/swmansion/gesturehandler/FlingGestureHandler$1;-><init>(Lcom/swmansion/gesturehandler/FlingGestureHandler;)V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mFailDelayed:Ljava/lang/Runnable;

    return-void
.end method

.method private endFling(Landroid/view/MotionEvent;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/FlingGestureHandler;->tryEndFling(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->fail()V

    :cond_0
    return-void
.end method

.method private startFling(Landroid/view/MotionEvent;)V
    .locals 3

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mStartX:F

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mStartY:F

    .line 39
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->begin()V

    const/4 p1, 0x1

    .line 40
    iput p1, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mMaxNumberOfPointersSimultaneously:I

    .line 41
    iget-object p1, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 42
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 46
    :goto_0
    iget-object p1, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mFailDelayed:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mMaxDurationMs:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private tryEndFling(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 50
    iget v0, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mMaxNumberOfPointersSimultaneously:I

    iget v1, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mNumberOfPointersRequired:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mDirection:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mStartX:F

    sub-float/2addr v0, v2

    iget-wide v2, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mMinAcceptableDelta:J

    long-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_3

    :cond_0
    iget v0, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mDirection:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mStartX:F

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float/2addr v0, v2

    iget-wide v2, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mMinAcceptableDelta:J

    long-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_3

    :cond_1
    iget v0, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mDirection:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mStartY:F

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v0, v2

    iget-wide v2, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mMinAcceptableDelta:J

    long-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mDirection:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v0, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mStartY:F

    sub-float/2addr p1, v0

    iget-wide v2, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mMinAcceptableDelta:J

    long-to-float v0, v2

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    .line 59
    :cond_3
    iget-object p1, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->activate()V

    .line 61
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->end()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected onCancel()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 100
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onHandle(Landroid/view/MotionEvent;)V
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/FlingGestureHandler;->startFling(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 85
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/FlingGestureHandler;->tryEndFling(Landroid/view/MotionEvent;)Z

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iget v1, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mMaxNumberOfPointersSimultaneously:I

    if-le v0, v1, :cond_1

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mMaxNumberOfPointersSimultaneously:I

    .line 90
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 92
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/FlingGestureHandler;->endFling(Landroid/view/MotionEvent;)V

    :cond_2
    return-void
.end method

.method protected onReset()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 107
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setDirection(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mDirection:I

    return-void
.end method

.method public setNumberOfPointersRequired(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/swmansion/gesturehandler/FlingGestureHandler;->mNumberOfPointersRequired:I

    return-void
.end method
