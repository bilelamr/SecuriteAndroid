.class public Lcom/swmansion/gesturehandler/TapGestureHandler;
.super Lcom/swmansion/gesturehandler/GestureHandler;
.source "TapGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/GestureHandler<",
        "Lcom/swmansion/gesturehandler/TapGestureHandler;",
        ">;"
    }
.end annotation


# static fields
.field private static MAX_VALUE_IGNORE:F = 1.4E-45f


# instance fields
.field private final mFailDelayed:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mLastX:F

.field private mLastY:F

.field private mMaxDelayMs:J

.field private mMaxDeltaX:F

.field private mMaxDeltaY:F

.field private mMaxDistSq:F

.field private mMaxDurationMs:J

.field private mMinNumberOfPointers:I

.field private mNumberOfPointers:I

.field private mNumberOfTaps:I

.field private mOffsetX:F

.field private mOffsetY:F

.field private mStartX:F

.field private mStartY:F

.field private mTapsSoFar:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandler;-><init>()V

    .line 13
    sget v0, Lcom/swmansion/gesturehandler/TapGestureHandler;->MAX_VALUE_IGNORE:F

    iput v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mMaxDeltaX:F

    .line 14
    iput v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mMaxDeltaY:F

    .line 15
    iput v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mMaxDistSq:F

    const-wide/16 v0, 0x1f4

    .line 17
    iput-wide v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mMaxDurationMs:J

    .line 18
    iput-wide v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mMaxDelayMs:J

    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mNumberOfTaps:I

    .line 20
    iput v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mMinNumberOfPointers:I

    .line 21
    iput v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mNumberOfPointers:I

    .line 30
    new-instance v1, Lcom/swmansion/gesturehandler/TapGestureHandler$1;

    invoke-direct {v1, p0}, Lcom/swmansion/gesturehandler/TapGestureHandler$1;-><init>(Lcom/swmansion/gesturehandler/TapGestureHandler;)V

    iput-object v1, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mFailDelayed:Ljava/lang/Runnable;

    .line 72
    invoke-virtual {p0, v0}, Lcom/swmansion/gesturehandler/GestureHandler;->setShouldCancelWhenOutside(Z)Lcom/swmansion/gesturehandler/GestureHandler;

    return-void
.end method

.method private endTap()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 90
    :goto_0
    iget v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mTapsSoFar:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mTapsSoFar:I

    iget v1, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mNumberOfTaps:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mNumberOfPointers:I

    iget v1, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mMinNumberOfPointers:I

    if-lt v0, v1, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->activate()V

    .line 92
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->end()V

    goto :goto_1

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mFailDelayed:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mMaxDelayMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method private shouldFail()Z
    .locals 5

    .line 99
    iget v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mLastX:F

    iget v1, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mStartX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mOffsetX:F

    add-float/2addr v0, v1

    .line 100
    iget v1, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mMaxDeltaX:F

    sget v2, Lcom/swmansion/gesturehandler/TapGestureHandler;->MAX_VALUE_IGNORE:F

    const/4 v3, 0x1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mMaxDeltaX:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    return v3

    .line 104
    :cond_0
    iget v1, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mLastY:F

    iget v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mStartY:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mOffsetY:F

    add-float/2addr v1, v2

    .line 105
    iget v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mMaxDeltaY:F

    sget v4, Lcom/swmansion/gesturehandler/TapGestureHandler;->MAX_VALUE_IGNORE:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mMaxDeltaY:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    return v3

    :cond_1
    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    .line 110
    iget v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mMaxDistSq:F

    sget v2, Lcom/swmansion/gesturehandler/TapGestureHandler;->MAX_VALUE_IGNORE:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private startTap()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mFailDelayed:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mMaxDurationMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected onCancel()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 160
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onHandle(Landroid/view/MotionEvent;)V
    .locals 6

    .line 115
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v0

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 119
    iput v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mOffsetX:F

    .line 120
    iput v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mOffsetY:F

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mStartX:F

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mStartY:F

    :cond_0
    const/4 v2, 0x6

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 133
    :cond_1
    invoke-static {p1, v3}, Lcom/swmansion/gesturehandler/GestureUtils;->getLastPointerX(Landroid/view/MotionEvent;Z)F

    move-result v2

    iput v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mLastX:F

    .line 134
    invoke-static {p1, v3}, Lcom/swmansion/gesturehandler/GestureUtils;->getLastPointerY(Landroid/view/MotionEvent;Z)F

    move-result v2

    iput v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mLastY:F

    goto :goto_1

    .line 126
    :cond_2
    :goto_0
    iget v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mOffsetX:F

    iget v4, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mLastX:F

    iget v5, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mStartX:F

    sub-float/2addr v4, v5

    add-float/2addr v2, v4

    iput v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mOffsetX:F

    .line 127
    iget v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mOffsetY:F

    iget v4, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mLastY:F

    iget v5, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mStartY:F

    sub-float/2addr v4, v5

    add-float/2addr v2, v4

    iput v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mOffsetY:F

    .line 128
    invoke-static {p1, v3}, Lcom/swmansion/gesturehandler/GestureUtils;->getLastPointerX(Landroid/view/MotionEvent;Z)F

    move-result v2

    iput v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mLastX:F

    .line 129
    invoke-static {p1, v3}, Lcom/swmansion/gesturehandler/GestureUtils;->getLastPointerY(Landroid/view/MotionEvent;Z)F

    move-result v2

    iput v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mLastY:F

    .line 130
    iget v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mLastX:F

    iput v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mStartX:F

    .line 131
    iget v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mLastY:F

    iput v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mStartY:F

    .line 137
    :goto_1
    iget v2, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mNumberOfPointers:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    iput p1, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mNumberOfPointers:I

    .line 141
    :cond_3
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/TapGestureHandler;->shouldFail()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 142
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->fail()V

    goto :goto_2

    :cond_4
    if-nez v0, :cond_6

    if-nez v1, :cond_5

    .line 145
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->begin()V

    .line 147
    :cond_5
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/TapGestureHandler;->startTap()V

    goto :goto_2

    :cond_6
    const/4 p1, 0x2

    if-ne v0, p1, :cond_8

    if-ne v1, v3, :cond_7

    .line 150
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/TapGestureHandler;->endTap()V

    goto :goto_2

    :cond_7
    if-nez v1, :cond_8

    .line 152
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/TapGestureHandler;->startTap()V

    :cond_8
    :goto_2
    return-void
.end method

.method protected onReset()V
    .locals 2

    const/4 v0, 0x0

    .line 166
    iput v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mTapsSoFar:I

    .line 167
    iput v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mNumberOfPointers:I

    .line 168
    iget-object v0, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 169
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setMaxDelayMs(J)Lcom/swmansion/gesturehandler/TapGestureHandler;
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mMaxDelayMs:J

    return-object p0
.end method

.method public setMaxDist(F)Lcom/swmansion/gesturehandler/TapGestureHandler;
    .locals 0

    mul-float p1, p1, p1

    .line 62
    iput p1, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mMaxDistSq:F

    return-object p0
.end method

.method public setMaxDurationMs(J)Lcom/swmansion/gesturehandler/TapGestureHandler;
    .locals 0

    .line 48
    iput-wide p1, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mMaxDurationMs:J

    return-object p0
.end method

.method public setMaxDx(F)Lcom/swmansion/gesturehandler/TapGestureHandler;
    .locals 0

    .line 53
    iput p1, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mMaxDeltaX:F

    return-object p0
.end method

.method public setMaxDy(F)Lcom/swmansion/gesturehandler/TapGestureHandler;
    .locals 0

    .line 58
    iput p1, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mMaxDeltaY:F

    return-object p0
.end method

.method public setMinNumberOfPointers(I)Lcom/swmansion/gesturehandler/TapGestureHandler;
    .locals 0

    .line 67
    iput p1, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mMinNumberOfPointers:I

    return-object p0
.end method

.method public setNumberOfTaps(I)Lcom/swmansion/gesturehandler/TapGestureHandler;
    .locals 0

    .line 38
    iput p1, p0, Lcom/swmansion/gesturehandler/TapGestureHandler;->mNumberOfTaps:I

    return-object p0
.end method
