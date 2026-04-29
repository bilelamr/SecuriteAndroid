.class public abstract Lcom/horcrux/svg/RenderableView;
.super Lcom/horcrux/svg/VirtualView;
.source "RenderableView.java"


# static fields
.field private static final regex:Ljava/util/regex/Pattern;


# instance fields
.field public fill:Lcom/facebook/react/bridge/ReadableArray;

.field public fillOpacity:F

.field public fillRule:Landroid/graphics/Path$FillType;

.field mAttributeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mLastMergedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mOriginProperties:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPropList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public stroke:Lcom/facebook/react/bridge/ReadableArray;

.field public strokeDasharray:[Lcom/horcrux/svg/SVGLength;

.field public strokeDashoffset:F

.field public strokeLinecap:Landroid/graphics/Paint$Cap;

.field public strokeLinejoin:Landroid/graphics/Paint$Join;

.field public strokeMiterlimit:F

.field public strokeOpacity:F

.field public strokeWidth:Lcom/horcrux/svg/SVGLength;

.field public vectorEffect:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[0-9.-]+"

    .line 95
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/horcrux/svg/RenderableView;->regex:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 2

    .line 42
    invoke-direct {p0, p1}, Lcom/horcrux/svg/VirtualView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    const/4 p1, 0x0

    .line 65
    iput p1, p0, Lcom/horcrux/svg/RenderableView;->vectorEffect:I

    .line 74
    new-instance p1, Lcom/horcrux/svg/SVGLength;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p1, v0, v1}, Lcom/horcrux/svg/SVGLength;-><init>(D)V

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->strokeWidth:Lcom/horcrux/svg/SVGLength;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 75
    iput p1, p0, Lcom/horcrux/svg/RenderableView;->strokeOpacity:F

    const/high16 v0, 0x40800000    # 4.0f

    .line 76
    iput v0, p0, Lcom/horcrux/svg/RenderableView;->strokeMiterlimit:F

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/horcrux/svg/RenderableView;->strokeDashoffset:F

    .line 79
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->strokeLinecap:Landroid/graphics/Paint$Cap;

    .line 80
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->strokeLinejoin:Landroid/graphics/Paint$Join;

    .line 83
    iput p1, p0, Lcom/horcrux/svg/RenderableView;->fillOpacity:F

    .line 84
    sget-object p1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->fillRule:Landroid/graphics/Path$FillType;

    return-void
.end method

.method private getAttributeList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mAttributeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private hasOwnProperty(Ljava/lang/String;)Z
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mAttributeList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static saturate(D)D
    .locals 5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    cmpg-double v4, p0, v2

    if-gtz v4, :cond_0

    move-wide p0, v2

    goto :goto_0

    :cond_0
    cmpl-double v2, p0, v0

    if-ltz v2, :cond_1

    move-wide p0, v0

    :cond_1
    :goto_0
    return-wide p0
.end method

.method private setupFillPaint(Landroid/graphics/Paint;F)Z
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 383
    invoke-virtual {p1}, Landroid/graphics/Paint;->reset()V

    const/16 v0, 0x181

    .line 384
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 385
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 386
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    invoke-direct {p0, p1, p2, v0}, Lcom/horcrux/svg/RenderableView;->setupPaint(Landroid/graphics/Paint;FLcom/facebook/react/bridge/ReadableArray;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private setupPaint(Landroid/graphics/Paint;FLcom/facebook/react/bridge/ReadableArray;)V
    .locals 10

    const/4 v0, 0x0

    .line 424
    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object p2

    iget p2, p2, Lcom/horcrux/svg/SvgView;->mTintColor:I

    .line 450
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 442
    :cond_1
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/horcrux/svg/SvgView;->getDefinedBrush(Ljava/lang/String;)Lcom/horcrux/svg/Brush;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 444
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mBox:Landroid/graphics/RectF;

    iget v1, p0, Lcom/horcrux/svg/VirtualView;->mScale:F

    invoke-virtual {p3, p1, v0, v1, p2}, Lcom/horcrux/svg/Brush;->setupPaint(Landroid/graphics/Paint;Landroid/graphics/RectF;FF)V

    goto :goto_1

    .line 427
    :cond_2
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 428
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result p3

    ushr-int/lit8 v0, p3, 0x18

    int-to-float v0, v0

    mul-float v0, v0, p2

    .line 430
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    shl-int/lit8 p2, p2, 0x18

    const v0, 0xffffff

    and-int/2addr p3, v0

    or-int/2addr p2, p3

    .line 431
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 435
    :cond_3
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    const/4 v3, 0x4

    const-wide v4, 0x406fe00000000000L    # 255.0

    if-le v0, v3, :cond_4

    invoke-interface {p3, v3}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v6

    float-to-double v8, p2

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    mul-double v6, v6, v4

    goto :goto_0

    :cond_4
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p2, p2, v0

    float-to-double v6, p2

    :goto_0
    double-to-int p2, v6

    .line 436
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    mul-double v2, v2, v4

    double-to-int v0, v2

    .line 437
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v1

    mul-double v1, v1, v4

    double-to-int v1, v1

    const/4 v2, 0x3

    .line 438
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    mul-double v2, v2, v4

    double-to-int p3, v2

    .line 434
    invoke-virtual {p1, p2, v0, v1, p3}, Landroid/graphics/Paint;->setARGB(IIII)V

    :cond_5
    :goto_1
    return-void
.end method

.method private setupStrokePaint(Landroid/graphics/Paint;F)Z
    .locals 6

    .line 397
    invoke-virtual {p1}, Landroid/graphics/Paint;->reset()V

    .line 398
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->strokeWidth:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, v0}, Lcom/horcrux/svg/VirtualView;->relativeOnOther(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_3

    .line 399
    iget-object v3, p0, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x181

    .line 403
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 404
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 405
    iget-object v3, p0, Lcom/horcrux/svg/RenderableView;->strokeLinecap:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 406
    iget-object v3, p0, Lcom/horcrux/svg/RenderableView;->strokeLinejoin:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 407
    iget v3, p0, Lcom/horcrux/svg/RenderableView;->strokeMiterlimit:F

    iget v4, p0, Lcom/horcrux/svg/VirtualView;->mScale:F

    mul-float v3, v3, v4

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    double-to-float v0, v0

    .line 408
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 409
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    invoke-direct {p0, p1, p2, v0}, Lcom/horcrux/svg/RenderableView;->setupPaint(Landroid/graphics/Paint;FLcom/facebook/react/bridge/ReadableArray;)V

    .line 411
    iget-object p2, p0, Lcom/horcrux/svg/RenderableView;->strokeDasharray:[Lcom/horcrux/svg/SVGLength;

    if-eqz p2, :cond_2

    .line 412
    array-length p2, p2

    .line 413
    new-array v0, p2, [F

    :goto_0
    if-ge v2, p2, :cond_1

    .line 415
    iget-object v1, p0, Lcom/horcrux/svg/RenderableView;->strokeDasharray:[Lcom/horcrux/svg/SVGLength;

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/horcrux/svg/VirtualView;->relativeOnOther(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v3

    double-to-float v1, v3

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 417
    :cond_1
    new-instance p2, Landroid/graphics/DashPathEffect;

    iget v1, p0, Lcom/horcrux/svg/RenderableView;->strokeDashoffset:F

    invoke-direct {p2, v0, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v2
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 5

    .line 331
    iget v0, p0, Lcom/horcrux/svg/VirtualView;->mOpacity:F

    mul-float p3, p3, v0

    const v0, 0x3c23d70a    # 0.01f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_7

    .line 334
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 336
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/VirtualView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object v3

    iput-object v3, p0, Lcom/horcrux/svg/VirtualView;->mPath:Landroid/graphics/Path;

    .line 337
    iget-object v3, p0, Lcom/horcrux/svg/VirtualView;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/horcrux/svg/RenderableView;->fillRule:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 339
    :cond_1
    iget v3, p0, Lcom/horcrux/svg/RenderableView;->vectorEffect:I

    if-ne v3, v2, :cond_2

    const/4 v1, 0x1

    .line 340
    :cond_2
    iget-object v3, p0, Lcom/horcrux/svg/VirtualView;->mPath:Landroid/graphics/Path;

    if-eqz v1, :cond_3

    .line 342
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 343
    iget-object v1, p0, Lcom/horcrux/svg/VirtualView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    const/4 v1, 0x0

    .line 344
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 348
    :cond_3
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 349
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 350
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v2, p0, Lcom/horcrux/svg/VirtualView;->mBox:Landroid/graphics/RectF;

    .line 354
    new-instance v2, Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 355
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 356
    invoke-virtual {p0, v1}, Lcom/horcrux/svg/VirtualView;->setClientRect(Landroid/graphics/RectF;)V

    .line 358
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/VirtualView;->clip(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 360
    iget v1, p0, Lcom/horcrux/svg/RenderableView;->fillOpacity:F

    mul-float v1, v1, p3

    invoke-direct {p0, p2, v1}, Lcom/horcrux/svg/RenderableView;->setupFillPaint(Landroid/graphics/Paint;F)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    .line 362
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/horcrux/svg/VirtualView;->mFillPath:Landroid/graphics/Path;

    .line 363
    iget-object v1, p0, Lcom/horcrux/svg/VirtualView;->mFillPath:Landroid/graphics/Path;

    invoke-virtual {p2, v3, v1}, Landroid/graphics/Paint;->getFillPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z

    .line 365
    :cond_4
    invoke-virtual {p1, v3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 367
    :cond_5
    iget v1, p0, Lcom/horcrux/svg/RenderableView;->strokeOpacity:F

    mul-float p3, p3, v1

    invoke-direct {p0, p2, p3}, Lcom/horcrux/svg/RenderableView;->setupStrokePaint(Landroid/graphics/Paint;F)Z

    move-result p3

    if-eqz p3, :cond_7

    if-eqz v0, :cond_6

    .line 369
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/horcrux/svg/VirtualView;->mStrokePath:Landroid/graphics/Path;

    .line 370
    iget-object p3, p0, Lcom/horcrux/svg/VirtualView;->mStrokePath:Landroid/graphics/Path;

    invoke-virtual {p2, v3, p3}, Landroid/graphics/Paint;->getFillPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z

    .line 372
    :cond_6
    invoke-virtual {p1, v3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7
    return-void
.end method

.method getRegion(Landroid/graphics/Path;)Landroid/graphics/Region;
    .locals 8

    .line 502
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x1

    .line 503
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 505
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 506
    new-instance v2, Landroid/graphics/Region;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-double v3, v3

    .line 508
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-double v4, v4

    .line 509
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    float-to-double v5, v5

    .line 510
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v0

    .line 511
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Region;-><init>(IIII)V

    .line 506
    invoke-virtual {v1, p1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    return-object v1
.end method

.method hitTest([F)I
    .locals 4

    .line 461
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mPath:Landroid/graphics/Path;

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/horcrux/svg/VirtualView;->mInvertible:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/horcrux/svg/VirtualView;->mTransformInvertible:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 466
    iget-object v2, p0, Lcom/horcrux/svg/VirtualView;->mInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 467
    iget-object p1, p0, Lcom/horcrux/svg/VirtualView;->mInvTransform:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 p1, 0x0

    .line 468
    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v2, 0x1

    .line 469
    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 471
    iget-object v2, p0, Lcom/horcrux/svg/VirtualView;->mRegion:Landroid/graphics/Region;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/horcrux/svg/VirtualView;->mFillPath:Landroid/graphics/Path;

    if-eqz v2, :cond_1

    .line 472
    invoke-virtual {p0, v2}, Lcom/horcrux/svg/RenderableView;->getRegion(Landroid/graphics/Path;)Landroid/graphics/Region;

    move-result-object v2

    iput-object v2, p0, Lcom/horcrux/svg/VirtualView;->mRegion:Landroid/graphics/Region;

    .line 474
    :cond_1
    iget-object v2, p0, Lcom/horcrux/svg/VirtualView;->mRegion:Landroid/graphics/Region;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/horcrux/svg/VirtualView;->mPath:Landroid/graphics/Path;

    if-eqz v2, :cond_2

    .line 475
    invoke-virtual {p0, v2}, Lcom/horcrux/svg/RenderableView;->getRegion(Landroid/graphics/Path;)Landroid/graphics/Region;

    move-result-object v2

    iput-object v2, p0, Lcom/horcrux/svg/VirtualView;->mRegion:Landroid/graphics/Region;

    .line 477
    :cond_2
    iget-object v2, p0, Lcom/horcrux/svg/VirtualView;->mStrokeRegion:Landroid/graphics/Region;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/horcrux/svg/VirtualView;->mStrokePath:Landroid/graphics/Path;

    if-eqz v2, :cond_3

    .line 478
    invoke-virtual {p0, v2}, Lcom/horcrux/svg/RenderableView;->getRegion(Landroid/graphics/Path;)Landroid/graphics/Region;

    move-result-object v2

    iput-object v2, p0, Lcom/horcrux/svg/VirtualView;->mStrokeRegion:Landroid/graphics/Region;

    .line 480
    :cond_3
    iget-object v2, p0, Lcom/horcrux/svg/VirtualView;->mRegion:Landroid/graphics/Region;

    if-eqz v2, :cond_4

    .line 481
    invoke-virtual {v2, p1, v0}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/horcrux/svg/VirtualView;->mStrokeRegion:Landroid/graphics/Region;

    if-eqz v2, :cond_8

    .line 482
    invoke-virtual {v2, p1, v0}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    .line 487
    :cond_5
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->getClipPath()Landroid/graphics/Path;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 489
    iget-object v3, p0, Lcom/horcrux/svg/VirtualView;->mClipRegionPath:Landroid/graphics/Path;

    if-eq v3, v2, :cond_6

    .line 490
    iput-object v2, p0, Lcom/horcrux/svg/VirtualView;->mClipRegionPath:Landroid/graphics/Path;

    .line 491
    invoke-virtual {p0, v2}, Lcom/horcrux/svg/RenderableView;->getRegion(Landroid/graphics/Path;)Landroid/graphics/Region;

    move-result-object v2

    iput-object v2, p0, Lcom/horcrux/svg/VirtualView;->mClipRegion:Landroid/graphics/Region;

    .line 493
    :cond_6
    iget-object v2, p0, Lcom/horcrux/svg/VirtualView;->mClipRegion:Landroid/graphics/Region;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    .line 498
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    return p1

    :cond_8
    :goto_0
    return v1
.end method

.method mergeProperties(Lcom/horcrux/svg/RenderableView;)V
    .locals 8

    .line 523
    invoke-direct {p1}, Lcom/horcrux/svg/RenderableView;->getAttributeList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 526
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 530
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/horcrux/svg/RenderableView;->mOriginProperties:Ljava/util/ArrayList;

    .line 531
    iget-object v1, p0, Lcom/horcrux/svg/RenderableView;->mPropList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/horcrux/svg/RenderableView;->mAttributeList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 533
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    .line 535
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 536
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 537
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 538
    iget-object v6, p0, Lcom/horcrux/svg/RenderableView;->mOriginProperties:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    invoke-direct {p0, v3}, Lcom/horcrux/svg/RenderableView;->hasOwnProperty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 541
    iget-object v6, p0, Lcom/horcrux/svg/RenderableView;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 545
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 549
    :cond_3
    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mLastMergedList:Ljava/util/ArrayList;

    :cond_4
    :goto_2
    return-void
.end method

.method render(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 266
    iget-object v2, v0, Lcom/horcrux/svg/VirtualView;->mMask:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/horcrux/svg/VirtualView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v2

    .line 268
    iget-object v4, v0, Lcom/horcrux/svg/VirtualView;->mMask:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/horcrux/svg/SvgView;->getDefinedMask(Ljava/lang/String;)Lcom/horcrux/svg/VirtualView;

    move-result-object v2

    check-cast v2, Lcom/horcrux/svg/MaskView;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 271
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 272
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v13

    .line 273
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 275
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v13, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 276
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v13, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 277
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v13, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 279
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 280
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 281
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 284
    iget-object v6, v2, Lcom/horcrux/svg/MaskView;->mX:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v6}, Lcom/horcrux/svg/VirtualView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v6

    double-to-float v6, v6

    .line 285
    iget-object v7, v2, Lcom/horcrux/svg/MaskView;->mY:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v7}, Lcom/horcrux/svg/VirtualView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v7

    double-to-float v7, v7

    .line 286
    iget-object v8, v2, Lcom/horcrux/svg/MaskView;->mW:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v8}, Lcom/horcrux/svg/VirtualView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v8

    double-to-float v8, v8

    .line 287
    iget-object v9, v2, Lcom/horcrux/svg/MaskView;->mH:Lcom/horcrux/svg/SVGLength;

    move/from16 v16, v4

    invoke-virtual {v0, v9}, Lcom/horcrux/svg/VirtualView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v3

    double-to-float v3, v3

    .line 288
    invoke-virtual {v5, v6, v7, v8, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 290
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 291
    invoke-virtual {v2, v5, v3, v4}, Lcom/horcrux/svg/GroupView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    mul-int v4, v16, v13

    .line 295
    new-array v2, v4, [I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v17, 0x0

    move-object v5, v14

    move-object v6, v2

    move/from16 v8, v16

    move-object/from16 v18, v10

    move/from16 v10, v17

    move-object/from16 v19, v11

    move/from16 v11, v16

    move-object/from16 v20, v12

    move v12, v13

    .line 296
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    .line 299
    aget v6, v2, v5

    shr-int/lit8 v7, v6, 0x10

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v8, v6, 0x8

    and-int/lit16 v8, v8, 0xff

    and-int/lit16 v9, v6, 0xff

    ushr-int/lit8 v6, v6, 0x18

    const-wide v10, 0x3fd322d0e5604189L    # 0.299

    move-object/from16 v17, v3

    move v12, v4

    int-to-double v3, v7

    .line 306
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v10

    const-wide v10, 0x3fe2c8b439581062L    # 0.587

    int-to-double v7, v8

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v10

    add-double/2addr v3, v7

    const-wide v7, 0x3fc26e978d4fdf3bL    # 0.144

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v7

    add-double/2addr v3, v9

    const-wide v7, 0x406fe00000000000L    # 255.0

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Lcom/horcrux/svg/RenderableView;->saturate(D)D

    move-result-wide v3

    int-to-double v6, v6

    .line 307
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v3

    double-to-int v3, v6

    shl-int/lit8 v3, v3, 0x18

    .line 309
    aput v3, v2, v5

    add-int/lit8 v5, v5, 0x1

    move v4, v12

    move-object/from16 v3, v17

    goto :goto_1

    :cond_1
    move-object/from16 v17, v3

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v14

    move-object v6, v2

    move/from16 v8, v16

    move/from16 v11, v16

    move v12, v13

    .line 312
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    move/from16 v2, p3

    move-object/from16 v3, v19

    .line 315
    invoke-virtual {v0, v3, v1, v2}, Lcom/horcrux/svg/RenderableView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 318
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v3, v17

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v2, 0x0

    move-object/from16 v4, v18

    const/4 v5, 0x0

    .line 319
    invoke-virtual {v4, v15, v2, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 320
    invoke-virtual {v4, v14, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object/from16 v3, p1

    move-object/from16 v4, v20

    .line 323
    invoke-virtual {v3, v4, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    move-object/from16 v3, p1

    move/from16 v2, p3

    .line 325
    invoke-virtual/range {p0 .. p3}, Lcom/horcrux/svg/RenderableView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    :goto_2
    return-void
.end method

.method resetProperties()V
    .locals 3

    .line 553
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mLastMergedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/horcrux/svg/RenderableView;->mOriginProperties:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 555
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 556
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mLastMergedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 557
    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mOriginProperties:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 563
    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mLastMergedList:Ljava/util/ArrayList;

    .line 564
    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mOriginProperties:Ljava/util/ArrayList;

    .line 565
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mPropList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mAttributeList:Ljava/util/ArrayList;

    goto :goto_1

    :catch_0
    move-exception v0

    .line 560
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method public setFill(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 6
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "fill"
    .end annotation

    if-eqz p1, :cond_4

    .line 105
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 110
    :cond_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    .line 111
    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Array:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asArray()Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_2

    .line 114
    :cond_1
    new-instance v0, Lcom/facebook/react/bridge/JavaOnlyArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/JavaOnlyArray;-><init>()V

    const/4 v1, 0x0

    .line 115
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushInt(I)V

    .line 116
    sget-object v2, Lcom/horcrux/svg/RenderableView;->regex:Ljava/util/regex/Pattern;

    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 118
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x3

    if-ge v1, v4, :cond_2

    .line 120
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v1, v4

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushDouble(D)V

    move v1, v3

    goto :goto_0

    .line 122
    :cond_3
    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    .line 124
    :goto_2
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void

    :cond_4
    :goto_3
    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    .line 107
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method public setFillOpacity(F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "fillOpacity"
    .end annotation

    .line 129
    iput p1, p0, Lcom/horcrux/svg/RenderableView;->fillOpacity:F

    .line 130
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method public setFillRule(I)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0x1
        name = "fillRule"
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fillRule "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/horcrux/svg/RenderableView;->fillRule:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " unrecognized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_1
    sget-object p1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->fillRule:Landroid/graphics/Path$FillType;

    .line 146
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method public setPropList(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "propList"
    .end annotation

    if-eqz p1, :cond_0

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mAttributeList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mPropList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 252
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/horcrux/svg/RenderableView;->mPropList:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method public setStroke(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "stroke"
    .end annotation

    if-eqz p1, :cond_3

    .line 151
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 156
    :cond_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    .line 157
    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Array:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asArray()Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_1

    .line 160
    :cond_1
    new-instance v0, Lcom/facebook/react/bridge/JavaOnlyArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/JavaOnlyArray;-><init>()V

    const/4 v1, 0x0

    .line 161
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushInt(I)V

    .line 162
    sget-object v1, Lcom/horcrux/svg/RenderableView;->regex:Ljava/util/regex/Pattern;

    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 163
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushDouble(D)V

    goto :goto_0

    .line 167
    :cond_2
    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    .line 169
    :goto_1
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void

    :cond_3
    :goto_2
    const/4 p1, 0x0

    .line 152
    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    .line 153
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method public setStrokeDasharray(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "strokeDasharray"
    .end annotation

    if-eqz p1, :cond_0

    .line 181
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    .line 182
    new-array v1, v0, [Lcom/horcrux/svg/SVGLength;

    iput-object v1, p0, Lcom/horcrux/svg/RenderableView;->strokeDasharray:[Lcom/horcrux/svg/SVGLength;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 184
    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->strokeDasharray:[Lcom/horcrux/svg/SVGLength;

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDynamic(I)Lcom/facebook/react/bridge/Dynamic;

    move-result-object v3

    invoke-static {v3}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 187
    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->strokeDasharray:[Lcom/horcrux/svg/SVGLength;

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method public setStrokeDashoffset(F)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "strokeDashoffset"
    .end annotation

    .line 194
    iget v0, p0, Lcom/horcrux/svg/VirtualView;->mScale:F

    mul-float p1, p1, v0

    iput p1, p0, Lcom/horcrux/svg/RenderableView;->strokeDashoffset:F

    .line 195
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method public setStrokeLinecap(I)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0x1
        name = "strokeLinecap"
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 217
    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->strokeLinecap:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 223
    :cond_0
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "strokeLinecap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/horcrux/svg/RenderableView;->strokeLinecap:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " unrecognized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 220
    :cond_1
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->strokeLinecap:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 214
    :cond_2
    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->strokeLinecap:Landroid/graphics/Paint$Cap;

    .line 226
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method public setStrokeLinejoin(I)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0x1
        name = "strokeLinejoin"
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 236
    sget-object p1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->strokeLinejoin:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 242
    :cond_0
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "strokeLinejoin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/horcrux/svg/RenderableView;->strokeLinejoin:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " unrecognized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 239
    :cond_1
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->strokeLinejoin:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 233
    :cond_2
    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->strokeLinejoin:Landroid/graphics/Paint$Join;

    .line 245
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method public setStrokeMiterlimit(F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 4.0f
        name = "strokeMiterlimit"
    .end annotation

    .line 206
    iput p1, p0, Lcom/horcrux/svg/RenderableView;->strokeMiterlimit:F

    .line 207
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method public setStrokeOpacity(F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "strokeOpacity"
    .end annotation

    .line 174
    iput p1, p0, Lcom/horcrux/svg/RenderableView;->strokeOpacity:F

    .line 175
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "strokeWidth"
    .end annotation

    .line 200
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->strokeWidth:Lcom/horcrux/svg/SVGLength;

    .line 201
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method public setVectorEffect(I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0x0
        name = "vectorEffect"
    .end annotation

    .line 99
    iput p1, p0, Lcom/horcrux/svg/RenderableView;->vectorEffect:I

    .line 100
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method
