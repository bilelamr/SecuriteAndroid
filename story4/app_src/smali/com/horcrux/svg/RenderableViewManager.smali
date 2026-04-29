.class Lcom/horcrux/svg/RenderableViewManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "RenderableViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/horcrux/svg/RenderableViewManager$RadialGradientManager;,
        Lcom/horcrux/svg/RenderableViewManager$LinearGradientManager;,
        Lcom/horcrux/svg/RenderableViewManager$MaskManager;,
        Lcom/horcrux/svg/RenderableViewManager$PatternManager;,
        Lcom/horcrux/svg/RenderableViewManager$SymbolManager;,
        Lcom/horcrux/svg/RenderableViewManager$UseViewManager;,
        Lcom/horcrux/svg/RenderableViewManager$DefsViewManager;,
        Lcom/horcrux/svg/RenderableViewManager$ClipPathViewManager;,
        Lcom/horcrux/svg/RenderableViewManager$RectViewManager;,
        Lcom/horcrux/svg/RenderableViewManager$LineViewManager;,
        Lcom/horcrux/svg/RenderableViewManager$EllipseViewManager;,
        Lcom/horcrux/svg/RenderableViewManager$CircleViewManager;,
        Lcom/horcrux/svg/RenderableViewManager$ImageViewManager;,
        Lcom/horcrux/svg/RenderableViewManager$TextPathViewManager;,
        Lcom/horcrux/svg/RenderableViewManager$TSpanViewManager;,
        Lcom/horcrux/svg/RenderableViewManager$TextViewManager;,
        Lcom/horcrux/svg/RenderableViewManager$PathViewManager;,
        Lcom/horcrux/svg/RenderableViewManager$GroupViewManager;,
        Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;,
        Lcom/horcrux/svg/RenderableViewManager$RenderableShadowNode;,
        Lcom/horcrux/svg/RenderableViewManager$SVGClass;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lcom/horcrux/svg/VirtualView;",
        ">;"
    }
.end annotation


# static fields
.field private static final CAMERA_DISTANCE_NORMALIZATION_MULTIPLIER:F = 5.0f

.field private static final EPSILON:D = 1.0E-5

.field private static final PERSPECTIVE_ARRAY_INVERTED_CAMERA_DISTANCE_INDEX:I = 0x2

.field private static final sMatrixDecompositionContext:Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;

.field private static final sTransformDecompositionArray:[D


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private final svgClass:Lcom/horcrux/svg/RenderableViewManager$SVGClass;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 167
    new-instance v0, Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;

    invoke-direct {v0}, Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;-><init>()V

    sput-object v0, Lcom/horcrux/svg/RenderableViewManager;->sMatrixDecompositionContext:Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;

    const/16 v0, 0x10

    new-array v0, v0, [D

    .line 169
    sput-object v0, Lcom/horcrux/svg/RenderableViewManager;->sTransformDecompositionArray:[D

    return-void
.end method

.method private constructor <init>(Lcom/horcrux/svg/RenderableViewManager$SVGClass;)V
    .locals 0

    .line 932
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    .line 933
    iput-object p1, p0, Lcom/horcrux/svg/RenderableViewManager;->svgClass:Lcom/horcrux/svg/RenderableViewManager$SVGClass;

    .line 934
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/RenderableViewManager;->mClassName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/horcrux/svg/RenderableViewManager$SVGClass;Lcom/horcrux/svg/RenderableViewManager$1;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/horcrux/svg/RenderableViewManager;-><init>(Lcom/horcrux/svg/RenderableViewManager$SVGClass;)V

    return-void
.end method

.method static synthetic access$100(Lcom/horcrux/svg/RenderableViewManager;Lcom/horcrux/svg/VirtualView;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/horcrux/svg/RenderableViewManager;->invalidateSvgView(Lcom/horcrux/svg/VirtualView;)V

    return-void
.end method

.method private static decomposeMatrix()V
    .locals 24

    .line 181
    const-class v0, D

    sget-object v1, Lcom/horcrux/svg/RenderableViewManager;->sTransformDecompositionArray:[D

    array-length v2, v1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_9

    .line 186
    sget-object v2, Lcom/horcrux/svg/RenderableViewManager;->sMatrixDecompositionContext:Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;

    iget-object v4, v2, Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;->perspective:[D

    .line 187
    iget-object v5, v2, Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;->scale:[D

    .line 188
    iget-object v6, v2, Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;->skew:[D

    .line 189
    iget-object v7, v2, Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;->translation:[D

    .line 190
    iget-object v2, v2, Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;->rotationDegrees:[D

    const/16 v8, 0xf

    .line 194
    aget-wide v9, v1, v8

    invoke-static {v9, v10}, Lcom/horcrux/svg/RenderableViewManager;->isZero(D)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    .line 197
    filled-new-array {v1, v1}, [I

    move-result-object v9

    invoke-static {v0, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[D

    new-array v3, v3, [D

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const-wide/16 v12, 0x0

    const/4 v14, 0x3

    if-ge v11, v1, :cond_3

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v1, :cond_2

    .line 201
    sget-object v16, Lcom/horcrux/svg/RenderableViewManager;->sTransformDecompositionArray:[D

    mul-int/lit8 v17, v11, 0x4

    add-int v17, v17, v15

    aget-wide v18, v16, v17

    aget-wide v20, v16, v8

    div-double v18, v18, v20

    .line 202
    aget-object v16, v9, v11

    aput-wide v18, v16, v15

    if-ne v15, v14, :cond_1

    move-wide/from16 v18, v12

    .line 203
    :cond_1
    aput-wide v18, v3, v17

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    aput-wide v15, v3, v8

    .line 209
    invoke-static {v3}, Lcom/facebook/react/uimanager/MatrixMathHelper;->determinant([D)D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/horcrux/svg/RenderableViewManager;->isZero(D)Z

    move-result v8

    if-eqz v8, :cond_4

    return-void

    .line 214
    :cond_4
    aget-object v8, v9, v10

    aget-wide v17, v8, v14

    invoke-static/range {v17 .. v18}, Lcom/horcrux/svg/RenderableViewManager;->isZero(D)Z

    move-result v8

    const/4 v11, 0x1

    const/16 v17, 0x2

    if-eqz v8, :cond_6

    aget-object v8, v9, v11

    aget-wide v18, v8, v14

    invoke-static/range {v18 .. v19}, Lcom/horcrux/svg/RenderableViewManager;->isZero(D)Z

    move-result v8

    if-eqz v8, :cond_6

    aget-object v8, v9, v17

    aget-wide v18, v8, v14

    invoke-static/range {v18 .. v19}, Lcom/horcrux/svg/RenderableViewManager;->isZero(D)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_2

    .line 230
    :cond_5
    aput-wide v12, v4, v17

    aput-wide v12, v4, v11

    aput-wide v12, v4, v10

    .line 231
    aput-wide v15, v4, v14

    goto :goto_3

    :cond_6
    :goto_2
    new-array v1, v1, [D

    .line 217
    aget-object v8, v9, v10

    aget-wide v15, v8, v14

    aput-wide v15, v1, v10

    aget-object v8, v9, v11

    aget-wide v15, v8, v14

    aput-wide v15, v1, v11

    aget-object v8, v9, v17

    aget-wide v15, v8, v14

    aput-wide v15, v1, v17

    aget-object v8, v9, v14

    aget-wide v15, v8, v14

    aput-wide v15, v1, v14

    .line 221
    invoke-static {v3}, Lcom/facebook/react/uimanager/MatrixMathHelper;->inverse([D)[D

    move-result-object v3

    .line 224
    invoke-static {v3}, Lcom/facebook/react/uimanager/MatrixMathHelper;->transpose([D)[D

    move-result-object v3

    .line 227
    invoke-static {v1, v3, v4}, Lcom/facebook/react/uimanager/MatrixMathHelper;->multiplyVectorByMatrix([D[D[D)V

    .line 235
    :goto_3
    aget-object v1, v9, v14

    invoke-static {v1, v10, v7, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    filled-new-array {v14, v14}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v14, :cond_7

    .line 241
    aget-object v3, v0, v1

    aget-object v4, v9, v1

    aget-wide v7, v4, v10

    aput-wide v7, v3, v10

    .line 242
    aget-object v3, v0, v1

    aget-object v4, v9, v1

    aget-wide v7, v4, v11

    aput-wide v7, v3, v11

    .line 243
    aget-object v3, v0, v1

    aget-object v4, v9, v1

    aget-wide v7, v4, v17

    aput-wide v7, v3, v17

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 247
    :cond_7
    aget-object v1, v0, v10

    invoke-static {v1}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Length([D)D

    move-result-wide v3

    aput-wide v3, v5, v10

    .line 248
    aget-object v1, v0, v10

    aget-wide v3, v5, v10

    invoke-static {v1, v3, v4}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Normalize([DD)[D

    move-result-object v1

    aput-object v1, v0, v10

    .line 251
    aget-object v1, v0, v10

    aget-object v3, v0, v11

    invoke-static {v1, v3}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Dot([D[D)D

    move-result-wide v3

    aput-wide v3, v6, v10

    .line 252
    aget-object v18, v0, v11

    aget-object v19, v0, v10

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    aget-wide v3, v6, v10

    neg-double v3, v3

    move-wide/from16 v22, v3

    invoke-static/range {v18 .. v23}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Combine([D[DDD)[D

    move-result-object v1

    aput-object v1, v0, v11

    .line 255
    aget-object v1, v0, v10

    aget-object v3, v0, v11

    invoke-static {v1, v3}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Dot([D[D)D

    move-result-wide v3

    aput-wide v3, v6, v10

    .line 256
    aget-object v18, v0, v11

    aget-object v19, v0, v10

    aget-wide v3, v6, v10

    neg-double v3, v3

    move-wide/from16 v22, v3

    invoke-static/range {v18 .. v23}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Combine([D[DDD)[D

    move-result-object v1

    aput-object v1, v0, v11

    .line 259
    aget-object v1, v0, v11

    invoke-static {v1}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Length([D)D

    move-result-wide v3

    aput-wide v3, v5, v11

    .line 260
    aget-object v1, v0, v11

    aget-wide v3, v5, v11

    invoke-static {v1, v3, v4}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Normalize([DD)[D

    move-result-object v1

    aput-object v1, v0, v11

    .line 261
    aget-wide v3, v6, v10

    aget-wide v7, v5, v11

    div-double/2addr v3, v7

    aput-wide v3, v6, v10

    .line 264
    aget-object v1, v0, v10

    aget-object v3, v0, v17

    invoke-static {v1, v3}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Dot([D[D)D

    move-result-wide v3

    aput-wide v3, v6, v11

    .line 265
    aget-object v18, v0, v17

    aget-object v19, v0, v10

    aget-wide v3, v6, v11

    neg-double v3, v3

    move-wide/from16 v22, v3

    invoke-static/range {v18 .. v23}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Combine([D[DDD)[D

    move-result-object v1

    aput-object v1, v0, v17

    .line 266
    aget-object v1, v0, v11

    aget-object v3, v0, v17

    invoke-static {v1, v3}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Dot([D[D)D

    move-result-wide v3

    aput-wide v3, v6, v17

    .line 267
    aget-object v18, v0, v17

    aget-object v19, v0, v11

    aget-wide v3, v6, v17

    neg-double v3, v3

    move-wide/from16 v22, v3

    invoke-static/range {v18 .. v23}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Combine([D[DDD)[D

    move-result-object v1

    aput-object v1, v0, v17

    .line 270
    aget-object v1, v0, v17

    invoke-static {v1}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Length([D)D

    move-result-wide v3

    aput-wide v3, v5, v17

    .line 271
    aget-object v1, v0, v17

    aget-wide v3, v5, v17

    invoke-static {v1, v3, v4}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Normalize([DD)[D

    move-result-object v1

    aput-object v1, v0, v17

    .line 272
    aget-wide v3, v6, v11

    aget-wide v7, v5, v17

    div-double/2addr v3, v7

    aput-wide v3, v6, v11

    .line 273
    aget-wide v3, v6, v17

    aget-wide v7, v5, v17

    div-double/2addr v3, v7

    aput-wide v3, v6, v17

    .line 278
    aget-object v1, v0, v11

    aget-object v3, v0, v17

    invoke-static {v1, v3}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Cross([D[D)[D

    move-result-object v1

    .line 279
    aget-object v3, v0, v10

    invoke-static {v3, v1}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Dot([D[D)D

    move-result-wide v3

    cmpg-double v1, v3, v12

    if-gez v1, :cond_8

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v14, :cond_8

    .line 281
    aget-wide v3, v5, v1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    mul-double v3, v3, v6

    aput-wide v3, v5, v1

    .line 282
    aget-object v3, v0, v1

    aget-wide v8, v3, v10

    mul-double v8, v8, v6

    aput-wide v8, v3, v10

    .line 283
    aget-object v3, v0, v1

    aget-wide v8, v3, v11

    mul-double v8, v8, v6

    aput-wide v8, v3, v11

    .line 284
    aget-object v3, v0, v1

    aget-wide v8, v3, v17

    mul-double v8, v8, v6

    aput-wide v8, v3, v17

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    const-wide v3, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    .line 291
    aget-object v1, v0, v17

    aget-wide v5, v1, v11

    aget-object v1, v0, v17

    aget-wide v7, v1, v17

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    neg-double v5, v5

    mul-double v5, v5, v3

    invoke-static {v5, v6}, Lcom/facebook/react/uimanager/MatrixMathHelper;->roundTo3Places(D)D

    move-result-wide v5

    aput-wide v5, v2, v10

    .line 292
    aget-object v1, v0, v17

    aget-wide v5, v1, v10

    neg-double v5, v5

    aget-object v1, v0, v17

    aget-wide v7, v1, v11

    aget-object v1, v0, v17

    aget-wide v12, v1, v11

    mul-double v7, v7, v12

    aget-object v1, v0, v17

    aget-wide v12, v1, v17

    aget-object v1, v0, v17

    aget-wide v14, v1, v17

    mul-double v12, v12, v14

    add-double/2addr v7, v12

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    neg-double v5, v5

    mul-double v5, v5, v3

    invoke-static {v5, v6}, Lcom/facebook/react/uimanager/MatrixMathHelper;->roundTo3Places(D)D

    move-result-wide v5

    aput-wide v5, v2, v11

    .line 293
    aget-object v1, v0, v11

    aget-wide v5, v1, v10

    aget-object v0, v0, v10

    aget-wide v7, v0, v10

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    neg-double v0, v0

    mul-double v0, v0, v3

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/MatrixMathHelper;->roundTo3Places(D)D

    move-result-wide v0

    aput-wide v0, v2, v17

    return-void

    .line 182
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method private invalidateSvgView(Lcom/horcrux/svg/VirtualView;)V
    .locals 1

    .line 1060
    invoke-virtual {p1}, Lcom/horcrux/svg/VirtualView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1062
    invoke-virtual {v0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    .line 1064
    :cond_0
    instance-of v0, p1, Lcom/horcrux/svg/TextView;

    if-eqz v0, :cond_1

    .line 1065
    check-cast p1, Lcom/horcrux/svg/TextView;

    invoke-virtual {p1}, Lcom/horcrux/svg/TextView;->getTextContainer()Lcom/horcrux/svg/TextView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/horcrux/svg/VirtualView;->clearChildCache()V

    :cond_1
    return-void
.end method

.method private static isZero(D)Z
    .locals 3

    .line 177
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v0, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static resetTransformProperty(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 333
    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 334
    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 335
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    .line 336
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotationX(F)V

    .line 337
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotationY(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 338
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 339
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 340
    invoke-virtual {p0, v0}, Landroid/view/View;->setCameraDistance(F)V

    return-void
.end method

.method private static setTransformProperty(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 5

    .line 297
    sget-object v0, Lcom/horcrux/svg/RenderableViewManager;->sTransformDecompositionArray:[D

    invoke-static {p1, v0}, Lcom/facebook/react/uimanager/TransformHelper;->processTransform(Lcom/facebook/react/bridge/ReadableArray;[D)V

    .line 298
    invoke-static {}, Lcom/horcrux/svg/RenderableViewManager;->decomposeMatrix()V

    .line 299
    sget-object p1, Lcom/horcrux/svg/RenderableViewManager;->sMatrixDecompositionContext:Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;

    iget-object p1, p1, Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;->translation:[D

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    double-to-float p1, v1

    .line 300
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p1

    .line 299
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 301
    sget-object p1, Lcom/horcrux/svg/RenderableViewManager;->sMatrixDecompositionContext:Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;

    iget-object p1, p1, Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;->translation:[D

    const/4 v1, 0x1

    aget-wide v2, p1, v1

    double-to-float p1, v2

    .line 302
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p1

    .line 301
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 303
    sget-object p1, Lcom/horcrux/svg/RenderableViewManager;->sMatrixDecompositionContext:Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;

    iget-object p1, p1, Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;->rotationDegrees:[D

    const/4 v2, 0x2

    aget-wide v3, p1, v2

    double-to-float p1, v3

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    .line 304
    sget-object p1, Lcom/horcrux/svg/RenderableViewManager;->sMatrixDecompositionContext:Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;

    iget-object p1, p1, Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;->rotationDegrees:[D

    aget-wide v3, p1, v0

    double-to-float p1, v3

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationX(F)V

    .line 305
    sget-object p1, Lcom/horcrux/svg/RenderableViewManager;->sMatrixDecompositionContext:Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;

    iget-object p1, p1, Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;->rotationDegrees:[D

    aget-wide v3, p1, v1

    double-to-float p1, v3

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationY(F)V

    .line 306
    sget-object p1, Lcom/horcrux/svg/RenderableViewManager;->sMatrixDecompositionContext:Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;

    iget-object p1, p1, Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;->scale:[D

    aget-wide v3, p1, v0

    double-to-float p1, v3

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 307
    sget-object p1, Lcom/horcrux/svg/RenderableViewManager;->sMatrixDecompositionContext:Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;

    iget-object p1, p1, Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;->scale:[D

    aget-wide v0, p1, v1

    double-to-float p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 309
    sget-object p1, Lcom/horcrux/svg/RenderableViewManager;->sMatrixDecompositionContext:Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;

    iget-object p1, p1, Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;->perspective:[D

    .line 311
    array-length v0, p1

    if-le v0, v2, :cond_1

    .line 312
    aget-wide v0, p1, v2

    double-to-float p1, v0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const p1, 0x3a4ccccd

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    div-float/2addr v0, p1

    .line 318
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getScreenDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p1

    mul-float p1, p1, v0

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float p1, p1, v0

    .line 327
    invoke-virtual {p0, p1}, Landroid/view/View;->setCameraDistance(F)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected bridge synthetic addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V
    .locals 0

    .line 52
    check-cast p2, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/RenderableViewManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/horcrux/svg/VirtualView;)V

    return-void
.end method

.method protected addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/horcrux/svg/VirtualView;)V
    .locals 0

    .line 1071
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/ViewManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V

    .line 1072
    new-instance p1, Lcom/horcrux/svg/RenderableViewManager$1;

    invoke-direct {p1, p0}, Lcom/horcrux/svg/RenderableViewManager$1;-><init>(Lcom/horcrux/svg/RenderableViewManager;)V

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method public createShadowNodeInstance()Lcom/facebook/react/uimanager/LayoutShadowNode;
    .locals 1

    .line 147
    new-instance v0, Lcom/horcrux/svg/RenderableViewManager$RenderableShadowNode;

    invoke-direct {v0, p0}, Lcom/horcrux/svg/RenderableViewManager$RenderableShadowNode;-><init>(Lcom/horcrux/svg/RenderableViewManager;)V

    return-object v0
.end method

.method public bridge synthetic createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableViewManager;->createShadowNodeInstance()Lcom/facebook/react/uimanager/LayoutShadowNode;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/horcrux/svg/RenderableViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/horcrux/svg/VirtualView;

    move-result-object p1

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/horcrux/svg/VirtualView;
    .locals 2

    .line 1103
    sget-object v0, Lcom/horcrux/svg/RenderableViewManager$2;->$SwitchMap$com$horcrux$svg$RenderableViewManager$SVGClass:[I

    iget-object v1, p0, Lcom/horcrux/svg/RenderableViewManager;->svgClass:Lcom/horcrux/svg/RenderableViewManager$SVGClass;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1141
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/horcrux/svg/RenderableViewManager;->svgClass:Lcom/horcrux/svg/RenderableViewManager$SVGClass;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1139
    :pswitch_0
    new-instance v0, Lcom/horcrux/svg/MaskView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/MaskView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 1137
    :pswitch_1
    new-instance v0, Lcom/horcrux/svg/PatternView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/PatternView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 1135
    :pswitch_2
    new-instance v0, Lcom/horcrux/svg/RadialGradientView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/RadialGradientView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 1133
    :pswitch_3
    new-instance v0, Lcom/horcrux/svg/LinearGradientView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/LinearGradientView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 1131
    :pswitch_4
    new-instance v0, Lcom/horcrux/svg/SymbolView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/SymbolView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 1129
    :pswitch_5
    new-instance v0, Lcom/horcrux/svg/UseView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/UseView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 1127
    :pswitch_6
    new-instance v0, Lcom/horcrux/svg/DefsView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/DefsView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 1125
    :pswitch_7
    new-instance v0, Lcom/horcrux/svg/ClipPathView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/ClipPathView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 1123
    :pswitch_8
    new-instance v0, Lcom/horcrux/svg/ImageView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/ImageView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 1121
    :pswitch_9
    new-instance v0, Lcom/horcrux/svg/TextPathView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/TextPathView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 1119
    :pswitch_a
    new-instance v0, Lcom/horcrux/svg/TSpanView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/TSpanView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 1117
    :pswitch_b
    new-instance v0, Lcom/horcrux/svg/TextView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/TextView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 1115
    :pswitch_c
    new-instance v0, Lcom/horcrux/svg/RectView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/RectView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 1113
    :pswitch_d
    new-instance v0, Lcom/horcrux/svg/LineView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/LineView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 1111
    :pswitch_e
    new-instance v0, Lcom/horcrux/svg/EllipseView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/EllipseView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 1109
    :pswitch_f
    new-instance v0, Lcom/horcrux/svg/CircleView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/CircleView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 1107
    :pswitch_10
    new-instance v0, Lcom/horcrux/svg/PathView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/PathView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 1105
    :pswitch_11
    new-instance v0, Lcom/horcrux/svg/GroupView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/GroupView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 939
    iget-object v0, p0, Lcom/horcrux/svg/RenderableViewManager;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getShadowNodeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/horcrux/svg/RenderableViewManager$RenderableShadowNode;",
            ">;"
        }
    .end annotation

    .line 152
    const-class v0, Lcom/horcrux/svg/RenderableViewManager$RenderableShadowNode;

    return-object v0
.end method

.method protected bridge synthetic onAfterUpdateTransaction(Landroid/view/View;)V
    .locals 0

    .line 52
    check-cast p1, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {p0, p1}, Lcom/horcrux/svg/RenderableViewManager;->onAfterUpdateTransaction(Lcom/horcrux/svg/VirtualView;)V

    return-void
.end method

.method protected onAfterUpdateTransaction(Lcom/horcrux/svg/VirtualView;)V
    .locals 0

    .line 1097
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManager;->onAfterUpdateTransaction(Landroid/view/View;)V

    .line 1098
    invoke-direct {p0, p1}, Lcom/horcrux/svg/RenderableViewManager;->invalidateSvgView(Lcom/horcrux/svg/VirtualView;)V

    return-void
.end method

.method public setClipPath(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "clipPath"
    .end annotation

    .line 949
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setClipPath(Ljava/lang/String;)V

    return-void
.end method

.method public setClipRule(Lcom/horcrux/svg/VirtualView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "clipRule"
    .end annotation

    .line 954
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setClipRule(I)V

    return-void
.end method

.method public setFill(Lcom/horcrux/svg/RenderableView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "fill"
    .end annotation

    .line 964
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setFill(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setFillOpacity(Lcom/horcrux/svg/RenderableView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "fillOpacity"
    .end annotation

    .line 969
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setFillOpacity(F)V

    return-void
.end method

.method public setFillRule(Lcom/horcrux/svg/RenderableView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0x1
        name = "fillRule"
    .end annotation

    .line 974
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setFillRule(I)V

    return-void
.end method

.method public setMask(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "mask"
    .end annotation

    .line 944
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setMask(Ljava/lang/String;)V

    return-void
.end method

.method public setMatrix(Lcom/horcrux/svg/VirtualView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "matrix"
    .end annotation

    .line 1025
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setMatrix(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setName(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "name"
    .end annotation

    .line 1056
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setOpacity(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "opacity"
    .end annotation

    .line 52
    check-cast p1, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/RenderableViewManager;->setOpacity(Lcom/horcrux/svg/VirtualView;F)V

    return-void
.end method

.method public setOpacity(Lcom/horcrux/svg/VirtualView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "opacity"
    .end annotation

    .line 959
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setOpacity(F)V

    return-void
.end method

.method public setPropList(Lcom/horcrux/svg/RenderableView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "propList"
    .end annotation

    .line 1046
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setPropList(Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public setResponsible(Lcom/horcrux/svg/VirtualView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "responsible"
    .end annotation

    .line 1051
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setResponsible(Z)V

    return-void
.end method

.method public setStroke(Lcom/horcrux/svg/RenderableView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "stroke"
    .end annotation

    .line 980
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setStroke(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setStrokeDasharray(Lcom/horcrux/svg/RenderableView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "strokeDasharray"
    .end annotation

    .line 990
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setStrokeDasharray(Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public setStrokeDashoffset(Lcom/horcrux/svg/RenderableView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "strokeDashoffset"
    .end annotation

    .line 995
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setStrokeDashoffset(F)V

    return-void
.end method

.method public setStrokeLinecap(Lcom/horcrux/svg/RenderableView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0x1
        name = "strokeLinecap"
    .end annotation

    .line 1010
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setStrokeLinecap(I)V

    return-void
.end method

.method public setStrokeLinejoin(Lcom/horcrux/svg/RenderableView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0x1
        name = "strokeLinejoin"
    .end annotation

    .line 1015
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setStrokeLinejoin(I)V

    return-void
.end method

.method public setStrokeMiterlimit(Lcom/horcrux/svg/RenderableView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 4.0f
        name = "strokeMiterlimit"
    .end annotation

    .line 1005
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setStrokeMiterlimit(F)V

    return-void
.end method

.method public setStrokeOpacity(Lcom/horcrux/svg/RenderableView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "strokeOpacity"
    .end annotation

    .line 985
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setStrokeOpacity(F)V

    return-void
.end method

.method public setStrokeWidth(Lcom/horcrux/svg/RenderableView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "strokeWidth"
    .end annotation

    .line 1000
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setStrokeWidth(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setTransform(Lcom/horcrux/svg/VirtualView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "transform"
    .end annotation

    .line 1030
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Array:Lcom/facebook/react/bridge/ReadableType;

    if-eq v0, v1, :cond_0

    return-void

    .line 1033
    :cond_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asArray()Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    if-nez p2, :cond_1

    .line 1035
    invoke-static {p1}, Lcom/horcrux/svg/RenderableViewManager;->resetTransformProperty(Landroid/view/View;)V

    goto :goto_0

    .line 1037
    :cond_1
    invoke-static {p1, p2}, Lcom/horcrux/svg/RenderableViewManager;->setTransformProperty(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 1039
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    .line 1040
    iput-object p2, p1, Lcom/horcrux/svg/VirtualView;->mTransform:Landroid/graphics/Matrix;

    .line 1041
    iget-object v0, p1, Lcom/horcrux/svg/VirtualView;->mInvTransform:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result p2

    iput-boolean p2, p1, Lcom/horcrux/svg/VirtualView;->mTransformInvertible:Z

    return-void
.end method

.method public setVectorEffect(Lcom/horcrux/svg/RenderableView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0x0
        name = "vectorEffect"
    .end annotation

    .line 1020
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/RenderableView;->setVectorEffect(I)V

    return-void
.end method
