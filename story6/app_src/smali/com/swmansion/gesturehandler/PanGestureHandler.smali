.class public Lcom/swmansion/gesturehandler/PanGestureHandler;
.super Lcom/swmansion/gesturehandler/GestureHandler;
.source "PanGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/GestureHandler<",
        "Lcom/swmansion/gesturehandler/PanGestureHandler;",
        ">;"
    }
.end annotation


# static fields
.field private static DEFAULT_MAX_POINTERS:I = 0xa

.field private static DEFAULT_MIN_POINTERS:I = 0x1

.field private static MAX_VALUE_IGNORE:F = 1.4E-45f

.field private static MIN_VALUE_IGNORE:F = 3.4028235E38f


# instance fields
.field private mActiveOffsetXEnd:F

.field private mActiveOffsetXStart:F

.field private mActiveOffsetYEnd:F

.field private mActiveOffsetYStart:F

.field private mAverageTouches:Z

.field private mFailOffsetXEnd:F

.field private mFailOffsetXStart:F

.field private mFailOffsetYEnd:F

.field private mFailOffsetYStart:F

.field private mLastVelocityX:F

.field private mLastVelocityY:F

.field private mLastX:F

.field private mLastY:F

.field private mMaxPointers:I

.field private mMinDistSq:F

.field private mMinPointers:I

.field private mMinVelocitySq:F

.field private mMinVelocityX:F

.field private mMinVelocityY:F

.field private mOffsetX:F

.field private mOffsetY:F

.field private mStartX:F

.field private mStartY:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandler;-><init>()V

    .line 16
    sget v0, Lcom/swmansion/gesturehandler/PanGestureHandler;->MAX_VALUE_IGNORE:F

    iput v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mMinDistSq:F

    .line 18
    sget v1, Lcom/swmansion/gesturehandler/PanGestureHandler;->MIN_VALUE_IGNORE:F

    iput v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mActiveOffsetXStart:F

    .line 19
    iput v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mActiveOffsetXEnd:F

    .line 21
    iput v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mFailOffsetXStart:F

    .line 22
    iput v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mFailOffsetXEnd:F

    .line 24
    iput v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mActiveOffsetYStart:F

    .line 25
    iput v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mActiveOffsetYEnd:F

    .line 27
    iput v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mFailOffsetYStart:F

    .line 28
    iput v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mFailOffsetYEnd:F

    .line 30
    iput v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mMinVelocityX:F

    .line 31
    iput v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mMinVelocityY:F

    .line 32
    iput v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mMinVelocitySq:F

    .line 33
    sget v0, Lcom/swmansion/gesturehandler/PanGestureHandler;->DEFAULT_MIN_POINTERS:I

    iput v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mMinPointers:I

    .line 34
    sget v0, Lcom/swmansion/gesturehandler/PanGestureHandler;->DEFAULT_MAX_POINTERS:I

    iput v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mMaxPointers:I

    .line 57
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int p1, p1, p1

    int-to-float p1, p1

    .line 59
    iput p1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mMinDistSq:F

    return-void
.end method

.method private static addVelocityMovement(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V
    .locals 3

    .line 306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 308
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 309
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    neg-float p0, v0

    neg-float v0, v1

    .line 310
    invoke-virtual {p1, p0, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method

.method private shouldActivate()Z
    .locals 6

    .line 141
    iget v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mLastX:F

    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mStartX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mOffsetX:F

    add-float/2addr v0, v1

    .line 142
    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mActiveOffsetXStart:F

    sget v2, Lcom/swmansion/gesturehandler/PanGestureHandler;->MIN_VALUE_IGNORE:F

    const/4 v3, 0x1

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    return v3

    .line 146
    :cond_0
    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mActiveOffsetXEnd:F

    sget v2, Lcom/swmansion/gesturehandler/PanGestureHandler;->MAX_VALUE_IGNORE:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    return v3

    .line 150
    :cond_1
    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mLastY:F

    iget v2, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mStartY:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mOffsetY:F

    add-float/2addr v1, v2

    .line 151
    iget v2, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mActiveOffsetYStart:F

    sget v4, Lcom/swmansion/gesturehandler/PanGestureHandler;->MIN_VALUE_IGNORE:F

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    return v3

    .line 155
    :cond_2
    iget v2, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mActiveOffsetYEnd:F

    sget v4, Lcom/swmansion/gesturehandler/PanGestureHandler;->MAX_VALUE_IGNORE:F

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_3

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    return v3

    :cond_3
    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    .line 160
    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mMinDistSq:F

    sget v2, Lcom/swmansion/gesturehandler/PanGestureHandler;->MIN_VALUE_IGNORE:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_4

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    return v3

    .line 164
    :cond_4
    iget v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mLastVelocityX:F

    .line 165
    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mMinVelocityX:F

    sget v2, Lcom/swmansion/gesturehandler/PanGestureHandler;->MIN_VALUE_IGNORE:F

    const/4 v4, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_7

    cmpg-float v2, v1, v4

    if-gez v2, :cond_5

    cmpg-float v1, v0, v1

    if-lez v1, :cond_6

    :cond_5
    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mMinVelocityX:F

    cmpl-float v2, v1, v4

    if-ltz v2, :cond_7

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_7

    :cond_6
    return v3

    .line 170
    :cond_7
    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mLastVelocityY:F

    .line 171
    iget v2, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mMinVelocityY:F

    sget v5, Lcom/swmansion/gesturehandler/PanGestureHandler;->MIN_VALUE_IGNORE:F

    cmpl-float v5, v2, v5

    if-eqz v5, :cond_a

    cmpg-float v5, v2, v4

    if-gez v5, :cond_8

    cmpg-float v2, v0, v2

    if-lez v2, :cond_9

    :cond_8
    iget v2, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mMinVelocityY:F

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_a

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_a

    :cond_9
    return v3

    :cond_a
    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    .line 177
    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mMinVelocitySq:F

    sget v2, Lcom/swmansion/gesturehandler/PanGestureHandler;->MIN_VALUE_IGNORE:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_b

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_b

    return v3

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private shouldFail()Z
    .locals 4

    .line 185
    iget v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mLastX:F

    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mStartX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mOffsetX:F

    add-float/2addr v0, v1

    .line 187
    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mFailOffsetXStart:F

    sget v2, Lcom/swmansion/gesturehandler/PanGestureHandler;->MAX_VALUE_IGNORE:F

    const/4 v3, 0x1

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    return v3

    .line 191
    :cond_0
    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mFailOffsetXEnd:F

    sget v2, Lcom/swmansion/gesturehandler/PanGestureHandler;->MIN_VALUE_IGNORE:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    return v3

    .line 196
    :cond_1
    iget v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mLastY:F

    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mStartY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mOffsetY:F

    add-float/2addr v0, v1

    .line 197
    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mFailOffsetYStart:F

    sget v2, Lcom/swmansion/gesturehandler/PanGestureHandler;->MAX_VALUE_IGNORE:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    return v3

    .line 201
    :cond_2
    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mFailOffsetYEnd:F

    sget v2, Lcom/swmansion/gesturehandler/PanGestureHandler;->MIN_VALUE_IGNORE:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    return v3

    :cond_3
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getTranslationX()F
    .locals 2

    .line 283
    iget v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mLastX:F

    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mStartX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mOffsetX:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getTranslationY()F
    .locals 2

    .line 287
    iget v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mLastY:F

    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mStartY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mOffsetY:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getVelocityX()F
    .locals 1

    .line 291
    iget v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mLastVelocityX:F

    return v0
.end method

.method public getVelocityY()F
    .locals 1

    .line 295
    iget v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mLastVelocityY:F

    return v0
.end method

.method protected onHandle(Landroid/view/MotionEvent;)V
    .locals 7

    .line 210
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v0

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x6

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    iget-boolean v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mAverageTouches:Z

    invoke-static {p1, v4}, Lcom/swmansion/gesturehandler/GestureUtils;->getLastPointerX(Landroid/view/MotionEvent;Z)F

    move-result v4

    iput v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mLastX:F

    .line 225
    iget-boolean v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mAverageTouches:Z

    invoke-static {p1, v4}, Lcom/swmansion/gesturehandler/GestureUtils;->getLastPointerY(Landroid/view/MotionEvent;Z)F

    move-result v4

    iput v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mLastY:F

    goto :goto_1

    .line 215
    :cond_1
    :goto_0
    iget v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mOffsetX:F

    iget v5, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mLastX:F

    iget v6, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mStartX:F

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mOffsetX:F

    .line 216
    iget v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mOffsetY:F

    iget v5, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mLastY:F

    iget v6, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mStartY:F

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mOffsetY:F

    .line 219
    iget-boolean v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mAverageTouches:Z

    invoke-static {p1, v4}, Lcom/swmansion/gesturehandler/GestureUtils;->getLastPointerX(Landroid/view/MotionEvent;Z)F

    move-result v4

    iput v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mLastX:F

    .line 220
    iget-boolean v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mAverageTouches:Z

    invoke-static {p1, v4}, Lcom/swmansion/gesturehandler/GestureUtils;->getLastPointerY(Landroid/view/MotionEvent;Z)F

    move-result v4

    iput v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mLastY:F

    .line 221
    iget v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mLastX:F

    iput v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mStartX:F

    .line 222
    iget v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mLastY:F

    iput v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mStartY:F

    :goto_1
    if-nez v0, :cond_2

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    iget v5, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mMinPointers:I

    if-lt v4, v5, :cond_2

    .line 229
    iget v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mLastX:F

    iput v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mStartX:F

    .line 230
    iget v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mLastY:F

    iput v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mStartY:F

    const/4 v4, 0x0

    .line 231
    iput v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mOffsetX:F

    .line 232
    iput v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mOffsetY:F

    .line 233
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 234
    iget-object v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v4, p1}, Lcom/swmansion/gesturehandler/PanGestureHandler;->addVelocityMovement(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V

    .line 235
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->begin()V

    goto :goto_2

    .line 236
    :cond_2
    iget-object v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_3

    .line 237
    invoke-static {v4, p1}, Lcom/swmansion/gesturehandler/PanGestureHandler;->addVelocityMovement(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V

    .line 238
    iget-object v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 239
    iget-object v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    iput v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mLastVelocityX:F

    .line 240
    iget-object v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    iput v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mLastVelocityY:F

    :cond_3
    :goto_2
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-ne v1, v4, :cond_6

    if-eq v0, v6, :cond_5

    if-ne v0, v5, :cond_4

    goto :goto_3

    .line 247
    :cond_4
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->fail()V

    goto :goto_4

    .line 245
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->end()V

    goto :goto_4

    :cond_6
    if-ne v1, v2, :cond_8

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    iget v4, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mMaxPointers:I

    if-le v2, v4, :cond_8

    if-ne v0, v6, :cond_7

    .line 252
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->cancel()V

    goto :goto_4

    .line 254
    :cond_7
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->fail()V

    goto :goto_4

    :cond_8
    if-ne v1, v3, :cond_9

    if-ne v0, v6, :cond_9

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    iget v1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mMinPointers:I

    if-ge p1, v1, :cond_9

    .line 261
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->fail()V

    goto :goto_4

    :cond_9
    if-ne v0, v5, :cond_b

    .line 263
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->shouldFail()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 264
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->fail()V

    goto :goto_4

    .line 265
    :cond_a
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/PanGestureHandler;->shouldActivate()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 267
    iget p1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mLastX:F

    iput p1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mStartX:F

    .line 268
    iget p1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mLastY:F

    iput p1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mStartY:F

    .line 269
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->activate()V

    :cond_b
    :goto_4
    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public setActiveOffsetXEnd(F)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 0

    .line 68
    iput p1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mActiveOffsetXEnd:F

    return-object p0
.end method

.method public setActiveOffsetXStart(F)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 0

    .line 63
    iput p1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mActiveOffsetXStart:F

    return-object p0
.end method

.method public setActiveOffsetYEnd(F)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 0

    .line 88
    iput p1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mActiveOffsetYEnd:F

    return-object p0
.end method

.method public setActiveOffsetYStart(F)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 0

    .line 83
    iput p1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mActiveOffsetYStart:F

    return-object p0
.end method

.method public setAverageTouches(Z)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mAverageTouches:Z

    return-object p0
.end method

.method public setFailOffsetXEnd(F)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 0

    .line 78
    iput p1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mFailOffsetXEnd:F

    return-object p0
.end method

.method public setFailOffsetXStart(F)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 0

    .line 73
    iput p1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mFailOffsetXStart:F

    return-object p0
.end method

.method public setFailOffsetYEnd(F)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 0

    .line 98
    iput p1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mFailOffsetYEnd:F

    return-object p0
.end method

.method public setFailOffsetYStart(F)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 0

    .line 93
    iput p1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mFailOffsetYStart:F

    return-object p0
.end method

.method public setMaxPointers(I)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 0

    .line 113
    iput p1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mMaxPointers:I

    return-object p0
.end method

.method public setMinDist(F)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 0

    mul-float p1, p1, p1

    .line 103
    iput p1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mMinDistSq:F

    return-object p0
.end method

.method public setMinPointers(I)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 0

    .line 108
    iput p1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mMinPointers:I

    return-object p0
.end method

.method public setMinVelocity(F)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 0

    mul-float p1, p1, p1

    .line 126
    iput p1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mMinVelocitySq:F

    return-object p0
.end method

.method public setMinVelocityX(F)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 0

    .line 131
    iput p1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mMinVelocityX:F

    return-object p0
.end method

.method public setMinVelocityY(F)Lcom/swmansion/gesturehandler/PanGestureHandler;
    .locals 0

    .line 136
    iput p1, p0, Lcom/swmansion/gesturehandler/PanGestureHandler;->mMinVelocityY:F

    return-object p0
.end method
