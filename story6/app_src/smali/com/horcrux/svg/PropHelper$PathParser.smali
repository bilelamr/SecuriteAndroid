.class Lcom/horcrux/svg/PropHelper$PathParser;
.super Ljava/lang/Object;
.source "PropHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/horcrux/svg/PropHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PathParser"
.end annotation


# static fields
.field private static final DECIMAL_REG_EXP:Ljava/util/regex/Pattern;

.field private static final PATH_REG_EXP:Ljava/util/regex/Pattern;


# instance fields
.field private mBezierCurves:Lcom/facebook/react/bridge/WritableArray;

.field private mLastCommand:Ljava/lang/String;

.field private mLastStartPoint:Lcom/facebook/react/bridge/WritableMap;

.field private mLastValue:Ljava/lang/String;

.field private mMatcher:Ljava/util/regex/Matcher;

.field private mPath:Landroid/graphics/Path;

.field private mPenDownX:F

.field private mPenDownY:F

.field private mPenX:F

.field private mPenY:F

.field private mPendDownSet:Z

.field private mPivotX:F

.field private mPivotY:F

.field private final mScale:F

.field private final mString:Ljava/lang/String;

.field private mValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "[a-df-z]|[\\-+]?(?:[\\d.]e[\\-+]?|[^\\s\\-+,a-z])+"

    const/4 v1, 0x2

    .line 232
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/horcrux/svg/PropHelper$PathParser;->PATH_REG_EXP:Ljava/util/regex/Pattern;

    const-string v0, "(\\.\\d+)(?=-?\\.)"

    .line 233
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/horcrux/svg/PropHelper$PathParser;->DECIMAL_REG_EXP:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;F)V
    .locals 1

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 238
    iput v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenX:F

    .line 239
    iput v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenY:F

    .line 242
    iput v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPivotX:F

    .line 243
    iput v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPivotY:F

    const/4 v0, 0x1

    .line 245
    iput-boolean v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mValid:Z

    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPendDownSet:Z

    .line 254
    iput p2, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mScale:F

    .line 255
    iput-object p1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mString:Ljava/lang/String;

    return-void
.end method

.method private arc(FFFZZFF)V
    .locals 9

    move-object v8, p0

    .line 498
    iget v0, v8, Lcom/horcrux/svg/PropHelper$PathParser;->mPenX:F

    add-float v6, p6, v0

    iget v0, v8, Lcom/horcrux/svg/PropHelper$PathParser;->mPenY:F

    add-float v7, p7, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/horcrux/svg/PropHelper$PathParser;->arcTo(FFFZZFF)V

    return-void
.end method

.method private arcTo(FFFZZFF)V
    .locals 23

    move-object/from16 v9, p0

    move/from16 v0, p4

    move/from16 v7, p5

    move/from16 v1, p6

    move/from16 v2, p7

    .line 502
    iget v3, v9, Lcom/horcrux/svg/PropHelper$PathParser;->mPenX:F

    .line 503
    iget v4, v9, Lcom/horcrux/svg/PropHelper$PathParser;->mPenY:F

    const/4 v5, 0x0

    cmpl-float v6, p2, v5

    if-nez v6, :cond_1

    cmpl-float v6, p1, v5

    if-nez v6, :cond_0

    sub-float v6, v2, v4

    goto :goto_0

    :cond_0
    move/from16 v6, p1

    goto :goto_0

    :cond_1
    move/from16 v6, p2

    .line 505
    :goto_0
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v8, p1, v5

    if-nez v8, :cond_2

    sub-float v8, v1, v3

    goto :goto_1

    :cond_2
    move/from16 v8, p1

    .line 506
    :goto_1
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v10, v8, v5

    if-eqz v10, :cond_b

    cmpl-float v10, v6, v5

    if-eqz v10, :cond_b

    cmpl-float v10, v1, v3

    if-nez v10, :cond_3

    cmpl-float v10, v2, v4

    if-nez v10, :cond_3

    goto/16 :goto_6

    :cond_3
    move/from16 v10, p3

    float-to-double v10, v10

    .line 513
    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    double-to-float v10, v10

    float-to-double v11, v10

    .line 514
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v13, v13

    .line 515
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    sub-float/2addr v1, v3

    sub-float/2addr v2, v4

    mul-float v12, v13, v1

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v12, v14

    mul-float v15, v11, v2

    div-float/2addr v15, v14

    add-float/2addr v12, v15

    neg-float v15, v11

    mul-float v16, v15, v1

    div-float v16, v16, v14

    mul-float v17, v13, v2

    div-float v17, v17, v14

    add-float v16, v16, v17

    mul-float v17, v8, v8

    mul-float v18, v17, v6

    mul-float v18, v18, v6

    mul-float v19, v6, v6

    mul-float v19, v19, v12

    mul-float v19, v19, v12

    mul-float v17, v17, v16

    mul-float v17, v17, v16

    sub-float v20, v18, v17

    sub-float v20, v20, v19

    cmpg-float v21, v20, v5

    if-gez v21, :cond_4

    const/high16 v12, 0x3f800000    # 1.0f

    div-float v20, v20, v18

    sub-float v12, v12, v20

    move/from16 v18, v15

    float-to-double v14, v12

    .line 528
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v12, v14

    mul-float v8, v8, v12

    mul-float v6, v6, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float v14, v1, v12

    div-float v12, v2, v12

    move/from16 v22, v14

    move v14, v12

    move/from16 v12, v22

    goto :goto_2

    :cond_4
    move/from16 v18, v15

    add-float v17, v17, v19

    div-float v14, v20, v17

    float-to-double v14, v14

    .line 534
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v14, v14

    if-ne v0, v7, :cond_5

    neg-float v14, v14

    :cond_5
    neg-float v15, v14

    mul-float v15, v15, v16

    mul-float v15, v15, v8

    div-float/2addr v15, v6

    mul-float v14, v14, v12

    mul-float v14, v14, v6

    div-float/2addr v14, v8

    mul-float v12, v13, v15

    mul-float v16, v11, v14

    sub-float v12, v12, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v17, v1, v16

    add-float v12, v12, v17

    mul-float v15, v15, v11

    mul-float v14, v14, v13

    add-float/2addr v15, v14

    div-float v14, v2, v16

    add-float/2addr v14, v15

    :goto_2
    div-float v15, v13, v8

    div-float/2addr v11, v8

    div-float v16, v18, v6

    div-float/2addr v13, v6

    neg-float v5, v12

    mul-float v18, v16, v5

    neg-float v7, v14

    mul-float v19, v13, v7

    add-float v0, v18, v19

    move/from16 p1, v8

    float-to-double v8, v0

    mul-float v5, v5, v15

    mul-float v7, v7, v11

    add-float/2addr v5, v7

    move/from16 p2, v6

    float-to-double v5, v5

    .line 552
    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    double-to-float v5, v5

    sub-float v0, v1, v12

    mul-float v16, v16, v0

    sub-float v6, v2, v14

    mul-float v13, v13, v6

    add-float v7, v16, v13

    float-to-double v7, v7

    mul-float v15, v15, v0

    mul-float v11, v11, v6

    add-float/2addr v15, v11

    move v9, v5

    float-to-double v5, v15

    .line 553
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    double-to-float v6, v5

    add-float v5, v12, v3

    add-float v7, v14, v4

    add-float/2addr v1, v3

    add-float/2addr v2, v4

    .line 560
    invoke-direct/range {p0 .. p0}, Lcom/horcrux/svg/PropHelper$PathParser;->setPenDown()V

    move-object/from16 v11, p0

    .line 562
    iput v1, v11, Lcom/horcrux/svg/PropHelper$PathParser;->mPivotX:F

    iput v1, v11, Lcom/horcrux/svg/PropHelper$PathParser;->mPenX:F

    .line 563
    iput v2, v11, Lcom/horcrux/svg/PropHelper$PathParser;->mPivotY:F

    iput v2, v11, Lcom/horcrux/svg/PropHelper$PathParser;->mPenY:F

    cmpl-float v0, p1, p2

    if-nez v0, :cond_a

    const/4 v0, 0x0

    cmpl-float v0, v10, v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move v8, v9

    float-to-double v0, v8

    .line 569
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v1, v6

    .line 570
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v1, v2

    .line 571
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v3, 0x43340000    # 180.0f

    if-eqz p4, :cond_7

    cmpg-float v3, v1, v3

    if-gez v3, :cond_8

    goto :goto_3

    :cond_7
    cmpl-float v3, v1, v3

    if-lez v3, :cond_8

    :goto_3
    sub-float v1, v2, v1

    :cond_8
    if-nez p5, :cond_9

    neg-float v1, v1

    .line 587
    :cond_9
    new-instance v2, Landroid/graphics/RectF;

    sub-float v3, v5, p1

    iget v4, v11, Lcom/horcrux/svg/PropHelper$PathParser;->mScale:F

    mul-float v3, v3, v4

    sub-float v6, v7, p1

    mul-float v6, v6, v4

    add-float v5, v5, p1

    mul-float v5, v5, v4

    add-float v7, v7, p1

    mul-float v7, v7, v4

    invoke-direct {v2, v3, v6, v5, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 593
    iget-object v3, v11, Lcom/horcrux/svg/PropHelper$PathParser;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3, v2, v0, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_5

    :cond_a
    :goto_4
    move v8, v9

    move-object/from16 v0, p0

    move v1, v5

    move v2, v7

    move/from16 v3, p1

    move/from16 v4, p2

    move v5, v8

    move/from16 v7, p5

    move v8, v10

    .line 566
    invoke-direct/range {v0 .. v8}, Lcom/horcrux/svg/PropHelper$PathParser;->arcToBezier(FFFFFFZF)V

    :goto_5
    return-void

    :cond_b
    :goto_6
    move-object v11, v9

    .line 509
    invoke-direct {v11, v1, v2}, Lcom/horcrux/svg/PropHelper$PathParser;->lineTo(FF)V

    return-void
.end method

.method private arcToBezier(FFFFFFZF)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p8

    float-to-double v2, v2

    .line 614
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 615
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v3, v4, p3

    neg-float v5, v2

    mul-float v5, v5, p4

    mul-float v2, v2, p3

    mul-float v4, v4, p4

    sub-float v6, p6, v1

    const-wide v7, 0x401921fb54442d18L    # 6.283185307179586

    const/4 v9, 0x0

    cmpg-float v10, v6, v9

    if-gez v10, :cond_0

    if-eqz p7, :cond_0

    float-to-double v9, v6

    .line 624
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v9, v7

    :goto_0
    double-to-float v6, v9

    goto :goto_1

    :cond_0
    cmpl-float v9, v6, v9

    if-lez v9, :cond_1

    if-nez p7, :cond_1

    float-to-double v9, v6

    .line 626
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v9, v7

    goto :goto_0

    :cond_1
    :goto_1
    float-to-double v7, v6

    const-wide v9, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 629
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v9

    invoke-direct {v0, v7, v8}, Lcom/horcrux/svg/PropHelper$PathParser;->round(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    int-to-float v8, v7

    div-float/2addr v6, v8

    const-wide v8, 0x3ff5555555555555L    # 1.3333333333333333

    const/high16 v10, 0x40800000    # 4.0f

    div-float v10, v6, v10

    float-to-double v10, v10

    .line 632
    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    mul-double v10, v10, v8

    double-to-float v8, v10

    float-to-double v9, v1

    .line 634
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    .line 635
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v7, :cond_2

    mul-float v12, v8, v9

    sub-float v12, v11, v12

    mul-float v11, v11, v8

    add-float/2addr v9, v11

    add-float/2addr v1, v6

    float-to-double v13, v1

    move/from16 p3, v6

    move v11, v7

    .line 642
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 643
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v7, v13

    mul-float v13, v8, v7

    add-float/2addr v13, v6

    mul-float v14, v8, v6

    sub-float v14, v7, v14

    mul-float v15, v3, v12

    add-float v15, p1, v15

    mul-float v16, v5, v9

    add-float v15, v15, v16

    mul-float v12, v12, v2

    add-float v12, p2, v12

    mul-float v9, v9, v4

    add-float/2addr v12, v9

    mul-float v9, v3, v13

    add-float v9, p1, v9

    mul-float v16, v5, v14

    add-float v9, v9, v16

    mul-float v13, v13, v2

    add-float v13, p2, v13

    mul-float v14, v14, v4

    add-float/2addr v13, v14

    mul-float v14, v3, v6

    add-float v14, p1, v14

    mul-float v16, v5, v7

    add-float v14, v14, v16

    mul-float v16, v2, v6

    add-float v16, p2, v16

    mul-float v17, v4, v7

    add-float v16, v16, v17

    move/from16 p4, v1

    .line 655
    iget-object v1, v0, Lcom/horcrux/svg/PropHelper$PathParser;->mPath:Landroid/graphics/Path;

    move/from16 p8, v2

    iget v2, v0, Lcom/horcrux/svg/PropHelper$PathParser;->mScale:F

    mul-float v18, v15, v2

    mul-float v19, v12, v2

    mul-float v20, v9, v2

    mul-float v21, v13, v2

    mul-float v22, v14, v2

    mul-float v23, v16, v2

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p4

    move/from16 v2, p8

    move v9, v7

    move v7, v11

    move v11, v6

    move/from16 v6, p3

    goto :goto_2

    :cond_2
    return-void
.end method

.method private clonePointMap(Lcom/facebook/react/bridge/WritableMap;)Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 371
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "x"

    .line 372
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string v1, "y"

    .line 373
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method

.method private close()V
    .locals 2

    .line 598
    iget-boolean v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPendDownSet:Z

    if-eqz v0, :cond_0

    .line 599
    iget v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenDownX:F

    iput v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenX:F

    .line 600
    iget v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenDownY:F

    iput v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenY:F

    const/4 v0, 0x0

    .line 601
    iput-boolean v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPendDownSet:Z

    .line 602
    iget-object v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 604
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 605
    iget-object v1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mLastStartPoint:Lcom/facebook/react/bridge/WritableMap;

    invoke-direct {p0, v1}, Lcom/horcrux/svg/PropHelper$PathParser;->clonePointMap(Lcom/facebook/react/bridge/WritableMap;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    .line 606
    iget-object v1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mLastStartPoint:Lcom/facebook/react/bridge/WritableMap;

    invoke-direct {p0, v1}, Lcom/horcrux/svg/PropHelper$PathParser;->clonePointMap(Lcom/facebook/react/bridge/WritableMap;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    .line 607
    iget-object v1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mLastStartPoint:Lcom/facebook/react/bridge/WritableMap;

    invoke-direct {p0, v1}, Lcom/horcrux/svg/PropHelper$PathParser;->clonePointMap(Lcom/facebook/react/bridge/WritableMap;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    .line 608
    iget-object v1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mBezierCurves:Lcom/facebook/react/bridge/WritableArray;

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/WritableArray;->pushArray(Lcom/facebook/react/bridge/WritableArray;)V

    :cond_0
    return-void
.end method

.method private cubicTo(FFFFFF)V
    .locals 8

    .line 443
    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->setPenDown()V

    .line 444
    iput p5, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenX:F

    .line 445
    iput p6, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenY:F

    .line 446
    iget-object v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mScale:F

    mul-float v2, p1, v1

    mul-float v3, p2, v1

    mul-float v4, p3, v1

    mul-float v5, p4, v1

    mul-float v6, p5, v1

    mul-float v7, p6, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 448
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 449
    invoke-direct {p0, p1, p2}, Lcom/horcrux/svg/PropHelper$PathParser;->getPointMap(FF)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    .line 450
    invoke-direct {p0, p3, p4}, Lcom/horcrux/svg/PropHelper$PathParser;->getPointMap(FF)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    .line 451
    invoke-direct {p0, p5, p6}, Lcom/horcrux/svg/PropHelper$PathParser;->getPointMap(FF)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    .line 452
    iget-object p1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mBezierCurves:Lcom/facebook/react/bridge/WritableArray;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/WritableArray;->pushArray(Lcom/facebook/react/bridge/WritableArray;)V

    return-void
.end method

.method private curve(FFFFFF)V
    .locals 8

    .line 433
    iget v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenX:F

    add-float v2, p1, v0

    iget p1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenY:F

    add-float v3, p2, p1

    add-float v4, p3, v0

    add-float v5, p4, p1

    add-float v6, p5, v0

    add-float v7, p6, p1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/horcrux/svg/PropHelper$PathParser;->curveTo(FFFFFF)V

    return-void
.end method

.method private curveTo(FFFFFF)V
    .locals 0

    .line 437
    iput p3, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPivotX:F

    .line 438
    iput p4, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPivotY:F

    .line 439
    invoke-direct/range {p0 .. p6}, Lcom/horcrux/svg/PropHelper$PathParser;->cubicTo(FFFFFF)V

    return-void
.end method

.method private executeCommand(Ljava/lang/String;)V
    .locals 12

    .line 259
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v8, "m"

    const-string v9, "l"

    const-string v10, "M"

    const-string v11, "L"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "z"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "v"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "q"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_5
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_6
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "h"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "Z"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_b
    const-string v0, "V"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_c
    const-string v0, "T"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_d
    const-string v0, "S"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_e
    const-string v0, "Q"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_f
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_10
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_11
    const-string v0, "H"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_12
    const-string v0, "C"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_13
    const-string v0, "A"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 338
    iput-object p1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mLastValue:Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mLastCommand:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/horcrux/svg/PropHelper$PathParser;->executeCommand(Ljava/lang/String;)V

    return-void

    .line 335
    :pswitch_0
    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->close()V

    goto/16 :goto_2

    .line 329
    :pswitch_1
    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v1

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v2

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v3

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextBoolean()Z

    move-result v4

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextBoolean()Z

    move-result v5

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v6

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/horcrux/svg/PropHelper$PathParser;->arcTo(FFFZZFF)V

    goto/16 :goto_2

    .line 326
    :pswitch_2
    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v1

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v2

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v3

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextBoolean()Z

    move-result v4

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextBoolean()Z

    move-result v5

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v6

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/horcrux/svg/PropHelper$PathParser;->arc(FFFZZFF)V

    goto/16 :goto_2

    .line 321
    :pswitch_3
    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v0

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/horcrux/svg/PropHelper$PathParser;->smoothQuadraticBezierCurveTo(FF)V

    goto/16 :goto_2

    .line 318
    :pswitch_4
    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v0

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/horcrux/svg/PropHelper$PathParser;->smoothQuadraticBezierCurve(FF)V

    goto/16 :goto_2

    .line 313
    :pswitch_5
    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v0

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v1

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v2

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/horcrux/svg/PropHelper$PathParser;->quadraticBezierCurveTo(FFFF)V

    goto/16 :goto_2

    .line 310
    :pswitch_6
    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v0

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v1

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v2

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/horcrux/svg/PropHelper$PathParser;->quadraticBezierCurve(FFFF)V

    goto/16 :goto_2

    .line 305
    :pswitch_7
    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v0

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v1

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v2

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/horcrux/svg/PropHelper$PathParser;->smoothCurveTo(FFFF)V

    goto/16 :goto_2

    .line 302
    :pswitch_8
    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v0

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v1

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v2

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/horcrux/svg/PropHelper$PathParser;->smoothCurve(FFFF)V

    goto/16 :goto_2

    .line 297
    :pswitch_9
    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v1

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v2

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v3

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v4

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v5

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/horcrux/svg/PropHelper$PathParser;->curveTo(FFFFFF)V

    goto/16 :goto_2

    .line 294
    :pswitch_a
    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v1

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v2

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v3

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v4

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v5

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/horcrux/svg/PropHelper$PathParser;->curve(FFFFFF)V

    goto :goto_2

    .line 289
    :pswitch_b
    iget v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenX:F

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/horcrux/svg/PropHelper$PathParser;->lineTo(FF)V

    goto :goto_2

    .line 286
    :pswitch_c
    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/horcrux/svg/PropHelper$PathParser;->line(FF)V

    goto :goto_2

    .line 281
    :pswitch_d
    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v0

    iget v1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenY:F

    invoke-direct {p0, v0, v1}, Lcom/horcrux/svg/PropHelper$PathParser;->lineTo(FF)V

    goto :goto_2

    .line 278
    :pswitch_e
    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/horcrux/svg/PropHelper$PathParser;->line(FF)V

    goto :goto_2

    .line 273
    :pswitch_f
    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v0

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/horcrux/svg/PropHelper$PathParser;->lineTo(FF)V

    goto :goto_2

    .line 270
    :pswitch_10
    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v0

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/horcrux/svg/PropHelper$PathParser;->line(FF)V

    goto :goto_2

    .line 265
    :pswitch_11
    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v0

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/horcrux/svg/PropHelper$PathParser;->moveTo(FF)V

    goto :goto_2

    .line 262
    :pswitch_12
    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v0

    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->getNextFloat()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/horcrux/svg/PropHelper$PathParser;->move(FF)V

    .line 343
    :goto_2
    iput-object p1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mLastCommand:Ljava/lang/String;

    .line 345
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    iput-object v9, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mLastCommand:Ljava/lang/String;

    goto :goto_3

    .line 347
    :cond_1
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    iput-object v11, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mLastCommand:Ljava/lang/String;

    :cond_2
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_13
        0x43 -> :sswitch_12
        0x48 -> :sswitch_11
        0x4c -> :sswitch_10
        0x4d -> :sswitch_f
        0x51 -> :sswitch_e
        0x53 -> :sswitch_d
        0x54 -> :sswitch_c
        0x56 -> :sswitch_b
        0x5a -> :sswitch_a
        0x61 -> :sswitch_9
        0x63 -> :sswitch_8
        0x68 -> :sswitch_7
        0x6c -> :sswitch_6
        0x6d -> :sswitch_5
        0x71 -> :sswitch_4
        0x73 -> :sswitch_3
        0x74 -> :sswitch_2
        0x76 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getNextBoolean()Z
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 381
    iput-boolean v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mValid:Z

    .line 382
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPath:Landroid/graphics/Path;

    return v0
.end method

.method private getNextFloat()F
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mLastValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 390
    iput-object v1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mLastValue:Ljava/lang/String;

    .line 391
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 395
    iput-boolean v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mValid:Z

    .line 396
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    return v0
.end method

.method private getPointMap(FF)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 364
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 365
    iget v1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mScale:F

    mul-float p1, p1, v1

    float-to-double v1, p1

    const-string p1, "x"

    invoke-interface {v0, p1, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 366
    iget p1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mScale:F

    mul-float p2, p2, p1

    float-to-double p1, p2

    const-string v1, "y"

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method

.method private line(FF)V
    .locals 1

    .line 416
    iget v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenX:F

    add-float/2addr p1, v0

    iget v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenY:F

    add-float/2addr p2, v0

    invoke-direct {p0, p1, p2}, Lcom/horcrux/svg/PropHelper$PathParser;->lineTo(FF)V

    return-void
.end method

.method private lineTo(FF)V
    .locals 3

    .line 420
    invoke-direct {p0}, Lcom/horcrux/svg/PropHelper$PathParser;->setPenDown()V

    .line 421
    iput p1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenX:F

    iput p1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPivotX:F

    .line 422
    iput p2, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenY:F

    iput p2, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPivotY:F

    .line 423
    iget-object v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mScale:F

    mul-float v2, p1, v1

    mul-float v1, v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 425
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 426
    invoke-direct {p0, p1, p2}, Lcom/horcrux/svg/PropHelper$PathParser;->getPointMap(FF)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    .line 427
    invoke-direct {p0, p1, p2}, Lcom/horcrux/svg/PropHelper$PathParser;->getPointMap(FF)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    .line 428
    invoke-direct {p0, p1, p2}, Lcom/horcrux/svg/PropHelper$PathParser;->getPointMap(FF)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    .line 429
    iget-object p1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mBezierCurves:Lcom/facebook/react/bridge/WritableArray;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/WritableArray;->pushArray(Lcom/facebook/react/bridge/WritableArray;)V

    return-void
.end method

.method private move(FF)V
    .locals 1

    .line 401
    iget v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenX:F

    add-float/2addr p1, v0

    iget v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenY:F

    add-float/2addr p2, v0

    invoke-direct {p0, p1, p2}, Lcom/horcrux/svg/PropHelper$PathParser;->moveTo(FF)V

    return-void
.end method

.method private moveTo(FF)V
    .locals 3

    .line 405
    iput p1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenX:F

    iput p1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPivotX:F

    iput p1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenDownX:F

    .line 406
    iput p2, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenY:F

    iput p2, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPivotY:F

    iput p2, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenDownY:F

    .line 407
    iget-object v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mScale:F

    mul-float v2, p1, v1

    mul-float v1, v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 409
    invoke-direct {p0, p1, p2}, Lcom/horcrux/svg/PropHelper$PathParser;->getPointMap(FF)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mLastStartPoint:Lcom/facebook/react/bridge/WritableMap;

    .line 410
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 411
    invoke-direct {p0, p1, p2}, Lcom/horcrux/svg/PropHelper$PathParser;->getPointMap(FF)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    .line 412
    iget-object p1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mBezierCurves:Lcom/facebook/react/bridge/WritableArray;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/WritableArray;->pushArray(Lcom/facebook/react/bridge/WritableArray;)V

    return-void
.end method

.method private quadraticBezierCurve(FFFF)V
    .locals 2

    .line 470
    iget v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenX:F

    add-float/2addr p1, v0

    iget v1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenY:F

    add-float/2addr p2, v1

    add-float/2addr p3, v0

    add-float/2addr p4, v1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/horcrux/svg/PropHelper$PathParser;->quadraticBezierCurveTo(FFFF)V

    return-void
.end method

.method private quadraticBezierCurveTo(FFFF)V
    .locals 10

    .line 474
    iput p1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPivotX:F

    .line 475
    iput p2, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPivotY:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    add-float v1, p3, p1

    const/high16 v2, 0x40400000    # 3.0f

    div-float v6, v1, v2

    mul-float p2, p2, v0

    add-float v0, p4, p2

    div-float v7, v0, v2

    .line 480
    iget v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenX:F

    add-float/2addr v0, p1

    div-float v4, v0, v2

    .line 481
    iget p1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenY:F

    add-float/2addr p1, p2

    div-float v5, p1, v2

    move-object v3, p0

    move v8, p3

    move v9, p4

    .line 482
    invoke-direct/range {v3 .. v9}, Lcom/horcrux/svg/PropHelper$PathParser;->cubicTo(FFFFFF)V

    return-void
.end method

.method private round(D)D
    .locals 4

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    .line 668
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double p1, p1, v0

    .line 669
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private setPenDown()V
    .locals 1

    .line 660
    iget-boolean v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPendDownSet:Z

    if-nez v0, :cond_0

    .line 661
    iget v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenX:F

    iput v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenDownX:F

    .line 662
    iget v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenY:F

    iput v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenDownY:F

    const/4 v0, 0x1

    .line 663
    iput-boolean v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPendDownSet:Z

    :cond_0
    return-void
.end method

.method private smoothCurve(FFFF)V
    .locals 2

    .line 456
    iget v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenX:F

    add-float/2addr p1, v0

    iget v1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenY:F

    add-float/2addr p2, v1

    add-float/2addr p3, v0

    add-float/2addr p4, v1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/horcrux/svg/PropHelper$PathParser;->smoothCurveTo(FFFF)V

    return-void
.end method

.method private smoothCurveTo(FFFF)V
    .locals 10

    .line 462
    iget v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenX:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    iget v2, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPivotX:F

    sub-float v4, v0, v2

    .line 463
    iget v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenY:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPivotY:F

    sub-float v5, v0, v1

    .line 464
    iput p1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPivotX:F

    .line 465
    iput p2, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPivotY:F

    move-object v3, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    .line 466
    invoke-direct/range {v3 .. v9}, Lcom/horcrux/svg/PropHelper$PathParser;->cubicTo(FFFFFF)V

    return-void
.end method

.method private smoothQuadraticBezierCurve(FF)V
    .locals 1

    .line 486
    iget v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenX:F

    add-float/2addr p1, v0

    iget v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenY:F

    add-float/2addr p2, v0

    invoke-direct {p0, p1, p2}, Lcom/horcrux/svg/PropHelper$PathParser;->smoothQuadraticBezierCurveTo(FF)V

    return-void
.end method

.method private smoothQuadraticBezierCurveTo(FF)V
    .locals 3

    .line 492
    iget v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenX:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    iget v2, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPivotX:F

    sub-float/2addr v0, v2

    .line 493
    iget v2, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPenY:F

    mul-float v2, v2, v1

    iget v1, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPivotY:F

    sub-float/2addr v2, v1

    .line 494
    invoke-direct {p0, v0, v2, p1, p2}, Lcom/horcrux/svg/PropHelper$PathParser;->quadraticBezierCurveTo(FFFF)V

    return-void
.end method


# virtual methods
.method getPath()Landroid/graphics/Path;
    .locals 3

    .line 353
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPath:Landroid/graphics/Path;

    .line 354
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mBezierCurves:Lcom/facebook/react/bridge/WritableArray;

    .line 355
    sget-object v0, Lcom/horcrux/svg/PropHelper$PathParser;->PATH_REG_EXP:Ljava/util/regex/Pattern;

    sget-object v1, Lcom/horcrux/svg/PropHelper$PathParser;->DECIMAL_REG_EXP:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "$1,"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mMatcher:Ljava/util/regex/Matcher;

    .line 357
    :goto_0
    iget-object v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mValid:Z

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/horcrux/svg/PropHelper$PathParser;->executeCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/horcrux/svg/PropHelper$PathParser;->mPath:Landroid/graphics/Path;

    return-object v0
.end method
