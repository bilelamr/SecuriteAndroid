.class public abstract Lcom/horcrux/svg/VirtualView;
.super Lcom/facebook/react/views/view/ReactViewGroup;
.source "VirtualView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final sRawMatrix:[F


# instance fields
.field private canvasDiagonal:D

.field private canvasHeight:F

.field private canvasWidth:F

.field private fontSize:D

.field private glyphContext:Lcom/horcrux/svg/GlyphContext;

.field mBox:Landroid/graphics/RectF;

.field private mCachedClipPath:Landroid/graphics/Path;

.field private mClientRect:Landroid/graphics/RectF;

.field private mClipPath:Ljava/lang/String;

.field mClipRegion:Landroid/graphics/Region;

.field mClipRegionPath:Landroid/graphics/Path;

.field mClipRule:I

.field final mContext:Lcom/facebook/react/bridge/ReactContext;

.field mFillPath:Landroid/graphics/Path;

.field mInvMatrix:Landroid/graphics/Matrix;

.field mInvTransform:Landroid/graphics/Matrix;

.field mInvertible:Z

.field mMask:Ljava/lang/String;

.field mMatrix:Landroid/graphics/Matrix;

.field mName:Ljava/lang/String;

.field mOpacity:F

.field mPath:Landroid/graphics/Path;

.field mRegion:Landroid/graphics/Region;

.field private mResponsible:Z

.field final mScale:F

.field mStrokePath:Landroid/graphics/Path;

.field mStrokeRegion:Landroid/graphics/Region;

.field private mTextRoot:Lcom/horcrux/svg/GroupView;

.field mTransform:Landroid/graphics/Matrix;

.field mTransformInvertible:Z

.field private svgView:Lcom/horcrux/svg/SvgView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 51
    fill-array-data v0, :array_0

    sput-object v0, Lcom/horcrux/svg/VirtualView;->sRawMatrix:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 2

    .line 37
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 56
    iput v0, p0, Lcom/horcrux/svg/VirtualView;->mOpacity:F

    .line 57
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/VirtualView;->mMatrix:Landroid/graphics/Matrix;

    .line 58
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/VirtualView;->mTransform:Landroid/graphics/Matrix;

    .line 59
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/VirtualView;->mInvMatrix:Landroid/graphics/Matrix;

    .line 60
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/VirtualView;->mInvTransform:Landroid/graphics/Matrix;

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/horcrux/svg/VirtualView;->mInvertible:Z

    .line 62
    iput-boolean v0, p0, Lcom/horcrux/svg/VirtualView;->mTransformInvertible:Z

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 79
    iput-wide v0, p0, Lcom/horcrux/svg/VirtualView;->fontSize:D

    .line 80
    iput-wide v0, p0, Lcom/horcrux/svg/VirtualView;->canvasDiagonal:D

    const/high16 v0, -0x40800000    # -1.0f

    .line 81
    iput v0, p0, Lcom/horcrux/svg/VirtualView;->canvasHeight:F

    .line 82
    iput v0, p0, Lcom/horcrux/svg/VirtualView;->canvasWidth:F

    .line 38
    iput-object p1, p0, Lcom/horcrux/svg/VirtualView;->mContext:Lcom/facebook/react/bridge/ReactContext;

    .line 39
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getScreenDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/horcrux/svg/VirtualView;->mScale:F

    return-void
.end method

.method private clearParentCache()V
    .locals 2

    move-object v0, p0

    .line 127
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 128
    instance-of v1, v0, Lcom/horcrux/svg/VirtualView;

    if-nez v1, :cond_0

    return-void

    .line 131
    :cond_0
    check-cast v0, Lcom/horcrux/svg/VirtualView;

    .line 132
    iget-object v1, v0, Lcom/horcrux/svg/VirtualView;->mPath:Landroid/graphics/Path;

    if-nez v1, :cond_1

    return-void

    .line 135
    :cond_1
    invoke-virtual {v0}, Lcom/horcrux/svg/VirtualView;->clearCache()V

    goto :goto_0
.end method

.method private getCanvasDiagonal()D
    .locals 6

    .line 448
    iget-wide v0, p0, Lcom/horcrux/svg/VirtualView;->canvasDiagonal:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 451
    :cond_0
    invoke-direct {p0}, Lcom/horcrux/svg/VirtualView;->getCanvasWidth()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 452
    invoke-direct {p0}, Lcom/horcrux/svg/VirtualView;->getCanvasHeight()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 453
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    mul-double v0, v0, v2

    iput-wide v0, p0, Lcom/horcrux/svg/VirtualView;->canvasDiagonal:D

    .line 454
    iget-wide v0, p0, Lcom/horcrux/svg/VirtualView;->canvasDiagonal:D

    return-wide v0
.end method

.method private getCanvasHeight()F
    .locals 2

    .line 434
    iget v0, p0, Lcom/horcrux/svg/VirtualView;->canvasHeight:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    return v0

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->getTextRoot()Lcom/horcrux/svg/GroupView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 439
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/horcrux/svg/SvgView;->getCanvasBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/horcrux/svg/VirtualView;->canvasHeight:F

    goto :goto_0

    .line 441
    :cond_1
    invoke-virtual {v0}, Lcom/horcrux/svg/GroupView;->getGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/horcrux/svg/GlyphContext;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/horcrux/svg/VirtualView;->canvasHeight:F

    .line 444
    :goto_0
    iget v0, p0, Lcom/horcrux/svg/VirtualView;->canvasHeight:F

    return v0
.end method

.method private getCanvasWidth()F
    .locals 2

    .line 420
    iget v0, p0, Lcom/horcrux/svg/VirtualView;->canvasWidth:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    return v0

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->getTextRoot()Lcom/horcrux/svg/GroupView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 425
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/horcrux/svg/SvgView;->getCanvasBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/horcrux/svg/VirtualView;->canvasWidth:F

    goto :goto_0

    .line 427
    :cond_1
    invoke-virtual {v0}, Lcom/horcrux/svg/GroupView;->getGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/horcrux/svg/GlyphContext;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/horcrux/svg/VirtualView;->canvasWidth:F

    .line 430
    :goto_0
    iget v0, p0, Lcom/horcrux/svg/VirtualView;->canvasWidth:F

    return v0
.end method

.method private getFontSizeFromContext()D
    .locals 5

    .line 174
    iget-wide v0, p0, Lcom/horcrux/svg/VirtualView;->fontSize:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->getTextRoot()Lcom/horcrux/svg/GroupView;

    move-result-object v0

    if-nez v0, :cond_1

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    return-wide v0

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/horcrux/svg/VirtualView;->glyphContext:Lcom/horcrux/svg/GlyphContext;

    if-nez v1, :cond_2

    .line 183
    invoke-virtual {v0}, Lcom/horcrux/svg/GroupView;->getGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/VirtualView;->glyphContext:Lcom/horcrux/svg/GlyphContext;

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->glyphContext:Lcom/horcrux/svg/GlyphContext;

    invoke-virtual {v0}, Lcom/horcrux/svg/GlyphContext;->getFontSize()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/horcrux/svg/VirtualView;->fontSize:D

    .line 188
    iget-wide v0, p0, Lcom/horcrux/svg/VirtualView;->fontSize:D

    return-wide v0
.end method


# virtual methods
.method clearCache()V
    .locals 3

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 105
    iput-wide v0, p0, Lcom/horcrux/svg/VirtualView;->canvasDiagonal:D

    const/high16 v2, -0x40800000    # -1.0f

    .line 106
    iput v2, p0, Lcom/horcrux/svg/VirtualView;->canvasHeight:F

    .line 107
    iput v2, p0, Lcom/horcrux/svg/VirtualView;->canvasWidth:F

    .line 108
    iput-wide v0, p0, Lcom/horcrux/svg/VirtualView;->fontSize:D

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/horcrux/svg/VirtualView;->mStrokeRegion:Landroid/graphics/Region;

    .line 110
    iput-object v0, p0, Lcom/horcrux/svg/VirtualView;->mRegion:Landroid/graphics/Region;

    .line 111
    iput-object v0, p0, Lcom/horcrux/svg/VirtualView;->mPath:Landroid/graphics/Path;

    return-void
.end method

.method clearChildCache()V
    .locals 3

    .line 115
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->clearCache()V

    const/4 v0, 0x0

    .line 116
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 117
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 118
    instance-of v2, v1, Lcom/horcrux/svg/VirtualView;

    if-eqz v2, :cond_0

    .line 119
    check-cast v1, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {v1}, Lcom/horcrux/svg/VirtualView;->clearChildCache()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method clip(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0

    .line 315
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/VirtualView;->getClipPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 318
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_0
    return-void
.end method

.method abstract draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
.end method

.method fromRelativeFast(Lcom/horcrux/svg/SVGLength;)D
    .locals 4

    .line 389
    sget-object v0, Lcom/horcrux/svg/VirtualView$1;->$SwitchMap$com$horcrux$svg$SVGLengthUnitType:[I

    iget-object v1, p1, Lcom/horcrux/svg/SVGLength;->unit:Lcom/horcrux/svg/SVGLengthUnitType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :pswitch_0
    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    goto :goto_0

    :pswitch_1
    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    goto :goto_0

    :pswitch_2
    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_0

    :pswitch_3
    const-wide v0, 0x400c58b1572580c3L    # 3.543307

    goto :goto_0

    :pswitch_4
    const-wide v0, 0x4041b76ed677707aL    # 35.43307

    goto :goto_0

    .line 394
    :pswitch_5
    invoke-direct {p0}, Lcom/horcrux/svg/VirtualView;->getFontSizeFromContext()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    goto :goto_0

    .line 391
    :pswitch_6
    invoke-direct {p0}, Lcom/horcrux/svg/VirtualView;->getFontSizeFromContext()D

    move-result-wide v0

    .line 416
    :goto_0
    iget-wide v2, p1, Lcom/horcrux/svg/SVGLength;->value:D

    mul-double v2, v2, v0

    iget p1, p0, Lcom/horcrux/svg/VirtualView;->mScale:F

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    return-wide v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getClientRect()Landroid/graphics/RectF;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method getClipPath()Landroid/graphics/Path;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mCachedClipPath:Landroid/graphics/Path;

    return-object v0
.end method

.method getClipPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mClipPath:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 291
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    iget-object v1, p0, Lcom/horcrux/svg/VirtualView;->mClipPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/horcrux/svg/SvgView;->getDefinedClipPath(Ljava/lang/String;)Lcom/horcrux/svg/VirtualView;

    move-result-object v0

    check-cast v0, Lcom/horcrux/svg/ClipPathView;

    const-string v1, "ReactNative"

    if-eqz v0, :cond_3

    .line 294
    iget v2, v0, Lcom/horcrux/svg/VirtualView;->mClipRule:I

    if-nez v2, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/horcrux/svg/GroupView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 295
    invoke-virtual {v0, p1, p2, v2}, Lcom/horcrux/svg/GroupView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Region$Op;)Landroid/graphics/Path;

    move-result-object p1

    .line 296
    :goto_0
    iget p2, v0, Lcom/horcrux/svg/VirtualView;->mClipRule:I

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    .line 303
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RNSVG: clipRule: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/horcrux/svg/VirtualView;->mClipRule:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " unrecognized"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 298
    :cond_1
    sget-object p2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 305
    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/horcrux/svg/VirtualView;->mCachedClipPath:Landroid/graphics/Path;

    goto :goto_2

    .line 307
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RNSVG: Undefined clipPath: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/horcrux/svg/VirtualView;->mClipPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->getClipPath()Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method getParentTextRoot()Lcom/horcrux/svg/GroupView;
    .locals 2

    .line 164
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 165
    instance-of v1, v0, Lcom/horcrux/svg/VirtualView;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 168
    :cond_0
    check-cast v0, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {v0}, Lcom/horcrux/svg/VirtualView;->getTextRoot()Lcom/horcrux/svg/GroupView;

    move-result-object v0

    return-object v0
.end method

.method abstract getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
.end method

.method getSvgView()Lcom/horcrux/svg/SvgView;
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->svgView:Lcom/horcrux/svg/SvgView;

    if-eqz v0, :cond_0

    return-object v0

    .line 335
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 339
    :cond_1
    instance-of v1, v0, Lcom/horcrux/svg/SvgView;

    if-eqz v1, :cond_2

    .line 340
    check-cast v0, Lcom/horcrux/svg/SvgView;

    iput-object v0, p0, Lcom/horcrux/svg/VirtualView;->svgView:Lcom/horcrux/svg/SvgView;

    goto :goto_0

    .line 341
    :cond_2
    instance-of v1, v0, Lcom/horcrux/svg/VirtualView;

    if-eqz v1, :cond_3

    .line 342
    check-cast v0, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {v0}, Lcom/horcrux/svg/VirtualView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/VirtualView;->svgView:Lcom/horcrux/svg/SvgView;

    goto :goto_0

    .line 344
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RNSVG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " should be descendant of a SvgView."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReactNative"

    invoke-static {v1, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :goto_0
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->svgView:Lcom/horcrux/svg/SvgView;

    return-object v0
.end method

.method getTextRoot()Lcom/horcrux/svg/GroupView;
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mTextRoot:Lcom/horcrux/svg/GroupView;

    if-nez v0, :cond_2

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_2

    .line 144
    instance-of v1, v0, Lcom/horcrux/svg/GroupView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/horcrux/svg/GroupView;

    invoke-virtual {v1}, Lcom/horcrux/svg/GroupView;->getGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 145
    iput-object v1, p0, Lcom/horcrux/svg/VirtualView;->mTextRoot:Lcom/horcrux/svg/GroupView;

    goto :goto_1

    .line 149
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 151
    instance-of v1, v0, Lcom/horcrux/svg/VirtualView;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 154
    :cond_1
    check-cast v0, Lcom/horcrux/svg/VirtualView;

    goto :goto_0

    .line 159
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mTextRoot:Lcom/horcrux/svg/GroupView;

    return-object v0
.end method

.method abstract hitTest([F)I
.end method

.method public invalidate()V
    .locals 1

    .line 96
    instance-of v0, p0, Lcom/horcrux/svg/RenderableView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->clearCache()V

    .line 100
    invoke-direct {p0}, Lcom/horcrux/svg/VirtualView;->clearParentCache()V

    .line 101
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method isResponsible()Z
    .locals 1

    .line 325
    iget-boolean v0, p0, Lcom/horcrux/svg/VirtualView;->mResponsible:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 489
    iget-object p1, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    if-nez p1, :cond_0

    return-void

    .line 493
    :cond_0
    instance-of p2, p0, Lcom/horcrux/svg/GroupView;

    if-nez p2, :cond_1

    .line 494
    iget p1, p1, Landroid/graphics/RectF;->left:F

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 495
    iget-object p2, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    double-to-int p2, p2

    .line 496
    iget-object p3, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->right:F

    float-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    double-to-int p3, p3

    .line 497
    iget-object p4, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->bottom:F

    float-to-double p4, p4

    invoke-static {p4, p5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p4

    double-to-int p4, p4

    .line 498
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLeft(I)V

    .line 499
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setTop(I)V

    .line 500
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setRight(I)V

    .line 501
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setBottom(I)V

    .line 503
    :cond_1
    iget-object p1, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 504
    iget-object p2, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    .line 505
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    goto :goto_0

    .line 466
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p1

    .line 468
    :goto_0
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    .line 469
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p2

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    goto :goto_1

    .line 470
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p2

    .line 472
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D
    .locals 4

    .line 361
    iget-object v0, p1, Lcom/horcrux/svg/SVGLength;->unit:Lcom/horcrux/svg/SVGLengthUnitType;

    .line 362
    sget-object v1, Lcom/horcrux/svg/SVGLengthUnitType;->SVG_LENGTHTYPE_NUMBER:Lcom/horcrux/svg/SVGLengthUnitType;

    if-ne v0, v1, :cond_0

    .line 363
    iget-wide v0, p1, Lcom/horcrux/svg/SVGLength;->value:D

    iget p1, p0, Lcom/horcrux/svg/VirtualView;->mScale:F

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    :goto_0
    mul-double v0, v0, v2

    return-wide v0

    .line 364
    :cond_0
    sget-object v1, Lcom/horcrux/svg/SVGLengthUnitType;->SVG_LENGTHTYPE_PERCENTAGE:Lcom/horcrux/svg/SVGLengthUnitType;

    if-ne v0, v1, :cond_1

    .line 365
    iget-wide v0, p1, Lcom/horcrux/svg/SVGLength;->value:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    invoke-direct {p0}, Lcom/horcrux/svg/VirtualView;->getCanvasHeight()F

    move-result p1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_0

    .line 367
    :cond_1
    invoke-virtual {p0, p1}, Lcom/horcrux/svg/VirtualView;->fromRelativeFast(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v0

    return-wide v0
.end method

.method relativeOnOther(Lcom/horcrux/svg/SVGLength;)D
    .locals 4

    .line 371
    iget-object v0, p1, Lcom/horcrux/svg/SVGLength;->unit:Lcom/horcrux/svg/SVGLengthUnitType;

    .line 372
    sget-object v1, Lcom/horcrux/svg/SVGLengthUnitType;->SVG_LENGTHTYPE_NUMBER:Lcom/horcrux/svg/SVGLengthUnitType;

    if-ne v0, v1, :cond_0

    .line 373
    iget-wide v0, p1, Lcom/horcrux/svg/SVGLength;->value:D

    iget p1, p0, Lcom/horcrux/svg/VirtualView;->mScale:F

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    :goto_0
    mul-double v0, v0, v2

    return-wide v0

    .line 374
    :cond_0
    sget-object v1, Lcom/horcrux/svg/SVGLengthUnitType;->SVG_LENGTHTYPE_PERCENTAGE:Lcom/horcrux/svg/SVGLengthUnitType;

    if-ne v0, v1, :cond_1

    .line 375
    iget-wide v0, p1, Lcom/horcrux/svg/SVGLength;->value:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    invoke-direct {p0}, Lcom/horcrux/svg/VirtualView;->getCanvasDiagonal()D

    move-result-wide v2

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {p0, p1}, Lcom/horcrux/svg/VirtualView;->fromRelativeFast(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v0

    return-wide v0
.end method

.method relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D
    .locals 4

    .line 351
    iget-object v0, p1, Lcom/horcrux/svg/SVGLength;->unit:Lcom/horcrux/svg/SVGLengthUnitType;

    .line 352
    sget-object v1, Lcom/horcrux/svg/SVGLengthUnitType;->SVG_LENGTHTYPE_NUMBER:Lcom/horcrux/svg/SVGLengthUnitType;

    if-ne v0, v1, :cond_0

    .line 353
    iget-wide v0, p1, Lcom/horcrux/svg/SVGLength;->value:D

    iget p1, p0, Lcom/horcrux/svg/VirtualView;->mScale:F

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    :goto_0
    mul-double v0, v0, v2

    return-wide v0

    .line 354
    :cond_0
    sget-object v1, Lcom/horcrux/svg/SVGLengthUnitType;->SVG_LENGTHTYPE_PERCENTAGE:Lcom/horcrux/svg/SVGLengthUnitType;

    if-ne v0, v1, :cond_1

    .line 355
    iget-wide v0, p1, Lcom/horcrux/svg/SVGLength;->value:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    invoke-direct {p0}, Lcom/horcrux/svg/VirtualView;->getCanvasWidth()F

    move-result p1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_0

    .line 357
    :cond_1
    invoke-virtual {p0, p1}, Lcom/horcrux/svg/VirtualView;->fromRelativeFast(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v0

    return-wide v0
.end method

.method render(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 0

    .line 193
    invoke-virtual {p0, p1, p2, p3}, Lcom/horcrux/svg/VirtualView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    return-void
.end method

.method restoreCanvas(Landroid/graphics/Canvas;I)V
    .locals 0

    .line 219
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method saveAndSetupCanvas(Landroid/graphics/Canvas;)I
    .locals 2

    .line 206
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 207
    iget-object v1, p0, Lcom/horcrux/svg/VirtualView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 208
    iget-object v1, p0, Lcom/horcrux/svg/VirtualView;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    return v0
.end method

.method saveDefinition()V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    iget-object v1, p0, Lcom/horcrux/svg/VirtualView;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/horcrux/svg/SvgView;->defineTemplate(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method setClientRect(Landroid/graphics/RectF;)V
    .locals 6

    .line 509
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 512
    :cond_0
    iput-object p1, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    .line 513
    iget-object p1, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    if-nez p1, :cond_1

    return-void

    .line 516
    :cond_1
    iget p1, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 517
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 518
    iget-object v1, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 519
    iget-object v2, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 520
    iget-object v3, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 521
    iget-object v4, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 523
    instance-of v5, p0, Lcom/horcrux/svg/GroupView;

    if-nez v5, :cond_2

    .line 524
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLeft(I)V

    .line 525
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTop(I)V

    .line 526
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setRight(I)V

    .line 527
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setBottom(I)V

    .line 529
    :cond_2
    invoke-virtual {p0, v3, v4}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 531
    iget-object v1, p0, Lcom/horcrux/svg/VirtualView;->mContext:Lcom/facebook/react/bridge/ReactContext;

    const-class v2, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 532
    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 533
    invoke-virtual {v1}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v1

    .line 535
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    .line 534
    invoke-static {v2, p1, v0, v3, v4}, Lcom/facebook/react/uimanager/OnLayoutEvent;->obtain(IIIII)Lcom/facebook/react/uimanager/OnLayoutEvent;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method public setClipPath(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "clipPath"
    .end annotation

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lcom/horcrux/svg/VirtualView;->mCachedClipPath:Landroid/graphics/Path;

    .line 238
    iput-object p1, p0, Lcom/horcrux/svg/VirtualView;->mClipPath:Ljava/lang/String;

    .line 239
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method public setClipRule(I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0x1
        name = "clipRule"
    .end annotation

    .line 244
    iput p1, p0, Lcom/horcrux/svg/VirtualView;->mClipRule:I

    .line 245
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method public setMask(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "mask"
    .end annotation

    .line 231
    iput-object p1, p0, Lcom/horcrux/svg/VirtualView;->mMask:Ljava/lang/String;

    .line 232
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method public setMatrix(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "matrix"
    .end annotation

    .line 256
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    .line 257
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->isNull()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Array:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asArray()Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    sget-object v0, Lcom/horcrux/svg/VirtualView;->sRawMatrix:[F

    iget v1, p0, Lcom/horcrux/svg/VirtualView;->mScale:F

    invoke-static {p1, v0, v1}, Lcom/horcrux/svg/PropHelper;->toMatrixData(Lcom/facebook/react/bridge/ReadableArray;[FF)I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 260
    iget-object p1, p0, Lcom/horcrux/svg/VirtualView;->mMatrix:Landroid/graphics/Matrix;

    if-nez p1, :cond_0

    .line 261
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/horcrux/svg/VirtualView;->mMatrix:Landroid/graphics/Matrix;

    .line 262
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/horcrux/svg/VirtualView;->mInvMatrix:Landroid/graphics/Matrix;

    .line 264
    :cond_0
    iget-object p1, p0, Lcom/horcrux/svg/VirtualView;->mMatrix:Landroid/graphics/Matrix;

    sget-object v0, Lcom/horcrux/svg/VirtualView;->sRawMatrix:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 265
    iget-object p1, p0, Lcom/horcrux/svg/VirtualView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/horcrux/svg/VirtualView;->mInvertible:Z

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    const-string p1, "ReactNative"

    const-string v0, "RNSVG: Transform matrices must be of size 6"

    .line 267
    invoke-static {p1, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 270
    iput-object p1, p0, Lcom/horcrux/svg/VirtualView;->mMatrix:Landroid/graphics/Matrix;

    .line 271
    iput-object p1, p0, Lcom/horcrux/svg/VirtualView;->mInvMatrix:Landroid/graphics/Matrix;

    const/4 p1, 0x0

    .line 272
    iput-boolean p1, p0, Lcom/horcrux/svg/VirtualView;->mInvertible:Z

    .line 275
    :cond_3
    :goto_0
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 276
    invoke-direct {p0}, Lcom/horcrux/svg/VirtualView;->clearParentCache()V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "name"
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/horcrux/svg/VirtualView;->mName:Ljava/lang/String;

    .line 225
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method public setOpacity(F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "opacity"
    .end annotation

    .line 250
    iput p1, p0, Lcom/horcrux/svg/VirtualView;->mOpacity:F

    .line 251
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method public setResponsible(Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "responsible"
    .end annotation

    .line 281
    iput-boolean p1, p0, Lcom/horcrux/svg/VirtualView;->mResponsible:Z

    .line 282
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method
