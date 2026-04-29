.class Lcom/horcrux/svg/TSpanView;
.super Lcom/horcrux/svg/TextView;
.source "TSpanView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field emoji:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field emojiTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedPath:Landroid/graphics/Path;

.field mContent:Ljava/lang/String;

.field private textPath:Lcom/horcrux/svg/TextPathView;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/horcrux/svg/TextView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/horcrux/svg/TSpanView;->emoji:Ljava/util/ArrayList;

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/horcrux/svg/TSpanView;->emojiTransforms:Ljava/util/ArrayList;

    return-void
.end method

.method private applyTextPropertiesToPaint(Landroid/graphics/Paint;Lcom/horcrux/svg/FontData;)V
    .locals 9

    const-string v0, "fonts/"

    .line 978
    iget-object v1, p0, Lcom/horcrux/svg/VirtualView;->mContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 980
    iget-wide v2, p2, Lcom/horcrux/svg/FontData;->fontSize:D

    iget v4, p0, Lcom/horcrux/svg/VirtualView;->mScale:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    .line 982
    iget-object v4, p2, Lcom/horcrux/svg/FontData;->fontWeight:Lcom/horcrux/svg/TextProperties$FontWeight;

    sget-object v5, Lcom/horcrux/svg/TextProperties$FontWeight;->Bold:Lcom/horcrux/svg/TextProperties$FontWeight;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 983
    :goto_0
    iget-object v5, p2, Lcom/horcrux/svg/FontData;->fontStyle:Lcom/horcrux/svg/TextProperties$FontStyle;

    sget-object v8, Lcom/horcrux/svg/TextProperties$FontStyle;->italic:Lcom/horcrux/svg/TextProperties$FontStyle;

    if-ne v5, v8, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    const/4 v6, 0x3

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_4

    const/4 v6, 0x2

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    const/4 v4, 0x0

    .line 1009
    iget-object p2, p2, Lcom/horcrux/svg/FontData;->fontFamily:Ljava/lang/String;

    .line 1011
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".otf"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1012
    invoke-static {v1, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1015
    :catch_0
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".ttf"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1016
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 1019
    :catch_1
    :try_start_2
    invoke-static {}, Lcom/facebook/react/views/text/ReactFontManager;->getInstance()Lcom/facebook/react/views/text/ReactFontManager;

    move-result-object v0

    invoke-virtual {v0, p2, v6, v1}, Lcom/facebook/react/views/text/ReactFontManager;->getTypeface(Ljava/lang/String;ILandroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    nop

    .line 1026
    :goto_3
    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    double-to-float p2, v2

    .line 1027
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1028
    sget-object p2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1029
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_5

    const/4 p2, 0x0

    .line 1030
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    :cond_5
    return-void
.end method

.method private getAbsoluteStartOffset(Lcom/horcrux/svg/SVGLength;DD)D
    .locals 10

    .line 960
    iget v0, p0, Lcom/horcrux/svg/VirtualView;->mScale:F

    float-to-double v6, v0

    const-wide/16 v4, 0x0

    move-object v1, p1

    move-wide v2, p2

    move-wide v8, p4

    invoke-static/range {v1 .. v9}, Lcom/horcrux/svg/PropHelper;->fromRelative(Lcom/horcrux/svg/SVGLength;DDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method private getLinePath(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)Landroid/graphics/Path;
    .locals 70

    move-object/from16 v6, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    .line 175
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    .line 176
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    if-nez v13, :cond_0

    return-object v12

    :cond_0
    const/4 v0, 0x0

    .line 185
    iget-object v1, v6, Lcom/horcrux/svg/TSpanView;->textPath:Lcom/horcrux/svg/TextPathView;

    const/4 v11, 0x0

    if-eqz v1, :cond_1

    const/16 v16, 0x1

    goto :goto_0

    :cond_1
    const/16 v16, 0x0

    :goto_0
    const-wide/16 v17, 0x0

    if-eqz v16, :cond_3

    .line 187
    new-instance v0, Landroid/graphics/PathMeasure;

    iget-object v1, v6, Lcom/horcrux/svg/TSpanView;->textPath:Lcom/horcrux/svg/TextPathView;

    invoke-virtual {v1, v15, v14}, Lcom/horcrux/svg/TextPathView;->getTextPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object v1

    invoke-direct {v0, v1, v11}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 188
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    float-to-double v1, v1

    .line 189
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->isClosed()Z

    move-result v3

    cmpl-double v4, v1, v17

    if-nez v4, :cond_2

    return-object v12

    :cond_2
    move-object v4, v0

    move-wide v8, v1

    move v7, v3

    goto :goto_1

    :cond_3
    move-object v4, v0

    move-wide/from16 v8, v17

    const/4 v7, 0x0

    .line 195
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/horcrux/svg/GroupView;->getTextRootGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v5

    .line 196
    invoke-virtual {v5}, Lcom/horcrux/svg/GlyphContext;->getFont()Lcom/horcrux/svg/FontData;

    move-result-object v0

    .line 197
    invoke-direct {v6, v14, v0}, Lcom/horcrux/svg/TSpanView;->applyTextPropertiesToPaint(Landroid/graphics/Paint;Lcom/horcrux/svg/FontData;)V

    .line 198
    new-instance v2, Lcom/horcrux/svg/GlyphPathBag;

    invoke-direct {v2, v14}, Lcom/horcrux/svg/GlyphPathBag;-><init>(Landroid/graphics/Paint;)V

    .line 199
    new-array v3, v13, [Z

    .line 200
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v19

    move-object/from16 v20, v12

    .line 221
    iget-wide v11, v0, Lcom/horcrux/svg/FontData;->kerning:D

    move-wide/from16 v22, v11

    .line 222
    iget-wide v11, v0, Lcom/horcrux/svg/FontData;->wordSpacing:D

    move-wide/from16 v25, v11

    .line 223
    iget-wide v10, v0, Lcom/horcrux/svg/FontData;->letterSpacing:D

    .line 224
    iget-boolean v1, v0, Lcom/horcrux/svg/FontData;->manualKerning:Z

    const/4 v12, 0x1

    xor-int/lit8 v27, v1, 0x1

    cmpl-double v1, v10, v17

    if-nez v1, :cond_4

    .line 274
    iget-object v1, v0, Lcom/horcrux/svg/FontData;->fontVariantLigatures:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    sget-object v12, Lcom/horcrux/svg/TextProperties$FontVariantLigatures;->normal:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    if-ne v1, v12, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 333
    :goto_2
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v28, v2

    const/16 v2, 0x15

    if-lt v12, v2, :cond_6

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\'rlig\', \'liga\', \'clig\', \'calt\', \'locl\', \'ccmp\', \'mark\', \'mkmk\',"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\'kern\', "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_5

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'hlig\', \'cala\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/horcrux/svg/FontData;->fontFeatureSettings:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    goto :goto_3

    .line 341
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'liga\' 0, \'clig\' 0, \'dlig\' 0, \'hlig\' 0, \'cala\' 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/horcrux/svg/FontData;->fontFeatureSettings:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 345
    :cond_6
    :goto_3
    iget-object v12, v0, Lcom/horcrux/svg/FontData;->fontData:Lcom/facebook/react/bridge/ReadableMap;

    .line 347
    new-array v2, v13, [F

    move-object/from16 v1, p1

    .line 348
    invoke-virtual {v14, v1, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 377
    iget-object v1, v0, Lcom/horcrux/svg/FontData;->textAnchor:Lcom/horcrux/svg/TextProperties$TextAnchor;

    move-object/from16 v29, v2

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/horcrux/svg/TextView;->getTextAnchorRoot()Lcom/horcrux/svg/TextView;

    move-result-object v2

    move-wide/from16 v30, v10

    .line 379
    invoke-virtual {v2, v14}, Lcom/horcrux/svg/TextView;->getSubtreeTextChunksTotalAdvance(Landroid/graphics/Paint;)D

    move-result-wide v10

    .line 380
    invoke-direct {v6, v1, v10, v11}, Lcom/horcrux/svg/TSpanView;->getTextAnchorOffset(Lcom/horcrux/svg/TextProperties$TextAnchor;D)D

    move-result-wide v32

    .line 381
    invoke-direct {v6, v14, v0}, Lcom/horcrux/svg/TSpanView;->applyTextPropertiesToPaint(Landroid/graphics/Paint;Lcom/horcrux/svg/FontData;)V

    .line 386
    invoke-virtual {v5}, Lcom/horcrux/svg/GlyphContext;->getFontSize()D

    move-result-wide v43

    const/16 v45, -0x1

    const-wide/high16 v46, 0x4000000000000000L    # 2.0

    if-eqz v16, :cond_b

    .line 389
    iget-object v0, v6, Lcom/horcrux/svg/TSpanView;->textPath:Lcom/horcrux/svg/TextPathView;

    invoke-virtual {v0}, Lcom/horcrux/svg/TextPathView;->getMidLine()Lcom/horcrux/svg/TextProperties$TextPathMidLine;

    move-result-object v0

    sget-object v2, Lcom/horcrux/svg/TextProperties$TextPathMidLine;->sharp:Lcom/horcrux/svg/TextProperties$TextPathMidLine;

    if-ne v0, v2, :cond_7

    const/16 v34, 0x1

    goto :goto_4

    :cond_7
    const/16 v34, 0x0

    .line 410
    :goto_4
    iget-object v0, v6, Lcom/horcrux/svg/TSpanView;->textPath:Lcom/horcrux/svg/TextPathView;

    invoke-virtual {v0}, Lcom/horcrux/svg/TextPathView;->getSide()Lcom/horcrux/svg/TextProperties$TextPathSide;

    move-result-object v0

    sget-object v2, Lcom/horcrux/svg/TextProperties$TextPathSide;->right:Lcom/horcrux/svg/TextProperties$TextPathSide;

    if-ne v0, v2, :cond_8

    const/16 v35, -0x1

    goto :goto_5

    :cond_8
    const/16 v35, 0x1

    .line 449
    :goto_5
    iget-object v0, v6, Lcom/horcrux/svg/TSpanView;->textPath:Lcom/horcrux/svg/TextPathView;

    invoke-virtual {v0}, Lcom/horcrux/svg/TextPathView;->getStartOffset()Lcom/horcrux/svg/SVGLength;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v15, v1

    move-object v1, v2

    move-object/from16 v48, v28

    move-object/from16 v28, v3

    move-wide v2, v8

    move-object/from16 v49, v4

    move-object/from16 v50, v5

    move-wide/from16 v4, v43

    invoke-direct/range {v0 .. v5}, Lcom/horcrux/svg/TSpanView;->getAbsoluteStartOffset(Lcom/horcrux/svg/SVGLength;DD)D

    move-result-wide v0

    add-double v32, v32, v0

    if-eqz v7, :cond_a

    div-double v2, v8, v46

    .line 453
    sget-object v4, Lcom/horcrux/svg/TextProperties$TextAnchor;->middle:Lcom/horcrux/svg/TextProperties$TextAnchor;

    if-ne v15, v4, :cond_9

    neg-double v2, v2

    goto :goto_6

    :cond_9
    move-wide/from16 v2, v17

    :goto_6
    add-double/2addr v0, v2

    add-double v2, v0, v8

    move-wide v4, v0

    goto :goto_7

    :cond_a
    move-wide v2, v8

    move-wide/from16 v4, v17

    :goto_7
    move/from16 v1, v34

    move/from16 v0, v35

    goto :goto_8

    :cond_b
    move-object/from16 v49, v4

    move-object/from16 v50, v5

    move-object/from16 v48, v28

    move-object/from16 v28, v3

    move-wide v2, v8

    move-wide/from16 v4, v17

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_8
    const-wide/high16 v51, 0x3ff0000000000000L    # 1.0

    .line 541
    iget-object v7, v6, Lcom/horcrux/svg/TextView;->mTextLength:Lcom/horcrux/svg/SVGLength;

    if-eqz v7, :cond_e

    .line 542
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v15

    move-wide/from16 v53, v8

    int-to-double v8, v15

    const-wide/16 v37, 0x0

    iget v15, v6, Lcom/horcrux/svg/VirtualView;->mScale:F

    move-wide/from16 v55, v4

    float-to-double v4, v15

    move-object/from16 v34, v7

    move-wide/from16 v35, v8

    move-wide/from16 v39, v4

    move-wide/from16 v41, v43

    invoke-static/range {v34 .. v42}, Lcom/horcrux/svg/PropHelper;->fromRelative(Lcom/horcrux/svg/SVGLength;DDDD)D

    move-result-wide v4

    cmpg-double v7, v4, v17

    if-ltz v7, :cond_d

    .line 546
    sget-object v7, Lcom/horcrux/svg/TSpanView$1;->$SwitchMap$com$horcrux$svg$TextProperties$TextLengthAdjust:[I

    iget-object v8, v6, Lcom/horcrux/svg/TextView;->mLengthAdjust:Lcom/horcrux/svg/TextProperties$TextLengthAdjust;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x2

    if-eq v7, v8, :cond_c

    sub-double/2addr v4, v10

    add-int/lit8 v7, v13, -0x1

    int-to-double v7, v7

    .line 549
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v7

    add-double v10, v30, v4

    move-wide/from16 v30, v10

    goto :goto_9

    :cond_c
    div-double v51, v4, v10

    goto :goto_9

    .line 544
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative textLength value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-wide/from16 v55, v4

    move-wide/from16 v53, v8

    :goto_9
    int-to-double v4, v0

    .line 556
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v51, v4

    .line 583
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    .line 584
    iget v8, v7, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-double v8, v8

    .line 585
    iget v15, v7, Landroid/graphics/Paint$FontMetrics;->leading:F

    move-wide/from16 v57, v10

    float-to-double v10, v15

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v8

    move/from16 v59, v0

    .line 586
    iget v0, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    add-float/2addr v0, v15

    move v15, v1

    float-to-double v0, v0

    .line 587
    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v7, v7

    move-wide/from16 v60, v2

    float-to-double v2, v7

    .line 588
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double v34, v2, v10

    .line 590
    invoke-virtual/range {p0 .. p0}, Lcom/horcrux/svg/TextView;->getBaselineShift()Ljava/lang/String;

    move-result-object v7

    .line 591
    invoke-virtual/range {p0 .. p0}, Lcom/horcrux/svg/TextView;->getAlignmentBaseline()Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    move-result-object v36

    if-eqz v36, :cond_f

    .line 595
    sget-object v37, Lcom/horcrux/svg/TSpanView$1;->$SwitchMap$com$horcrux$svg$TextProperties$AlignmentBaseline:[I

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Enum;->ordinal()I

    move-result v38

    aget v37, v37, v38

    packed-switch v37, :pswitch_data_0

    goto :goto_d

    :pswitch_0
    move-wide v0, v2

    goto :goto_b

    :pswitch_1
    div-double v0, v34, v46

    goto :goto_b

    :pswitch_2
    move-wide v0, v10

    goto :goto_b

    :pswitch_3
    const-wide v2, 0x3fe999999999999aL    # 0.8

    .line 651
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_a

    :pswitch_4
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 647
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    :goto_a
    mul-double v0, v0, v2

    goto :goto_b

    .line 638
    :pswitch_5
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v8

    div-double v0, v0, v46

    :goto_b
    :pswitch_6
    const/4 v2, 0x0

    goto :goto_e

    .line 628
    :pswitch_7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const-string v1, "x"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 630
    invoke-virtual {v14, v1, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 631
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-double v0, v0

    .line 632
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v0, v0, v46

    goto :goto_e

    :pswitch_8
    const/4 v2, 0x0

    .line 622
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_c

    :pswitch_9
    const/4 v2, 0x0

    .line 610
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    :goto_c
    neg-double v0, v8

    goto :goto_e

    :cond_f
    :goto_d
    :pswitch_a
    const/4 v2, 0x0

    move-wide/from16 v0, v17

    :goto_e
    if-eqz v7, :cond_16

    .line 707
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    .line 708
    sget-object v3, Lcom/horcrux/svg/TSpanView$1;->$SwitchMap$com$horcrux$svg$TextProperties$AlignmentBaseline:[I

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v3, v3, v8

    const/16 v8, 0xe

    if-eq v3, v8, :cond_16

    const/16 v8, 0x10

    if-eq v3, v8, :cond_16

    .line 714
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v8, -0x669119bb

    if-eq v3, v8, :cond_12

    const v8, 0x1be40

    if-eq v3, v8, :cond_11

    const v8, 0x68b6f7b

    if-eq v3, v8, :cond_10

    goto :goto_f

    :cond_10
    const-string v3, "super"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x1

    goto :goto_10

    :cond_11
    const-string v3, "sub"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x0

    goto :goto_10

    :cond_12
    const-string v3, "baseline"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x2

    goto :goto_10

    :cond_13
    :goto_f
    const/4 v3, -0x1

    :goto_10
    const-string v8, "os2"

    const-string v9, "unitsPerEm"

    const-string v10, "tables"

    if-eqz v3, :cond_15

    const/4 v11, 0x1

    if-eq v3, v11, :cond_14

    const/4 v11, 0x2

    if-eq v3, v11, :cond_16

    .line 749
    iget v3, v6, Lcom/horcrux/svg/VirtualView;->mScale:F

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v35, v8, v43

    const-wide/16 v37, 0x0

    float-to-double v8, v3

    move-object/from16 v34, v7

    move-wide/from16 v39, v8

    move-wide/from16 v41, v43

    invoke-static/range {v34 .. v42}, Lcom/horcrux/svg/PropHelper;->fromRelative(Ljava/lang/String;DDDD)D

    move-result-wide v7

    sub-double/2addr v0, v7

    goto/16 :goto_11

    :cond_14
    if-eqz v12, :cond_16

    .line 732
    invoke-interface {v12, v10}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v12, v9}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 733
    invoke-interface {v12, v9}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 734
    invoke-interface {v12, v10}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v7

    .line 735
    invoke-interface {v7, v8}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 736
    invoke-interface {v7, v8}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v7

    const-string v8, "ySuperscriptYOffset"

    .line 737
    invoke-interface {v7, v8}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 738
    invoke-interface {v7, v8}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 739
    iget v9, v6, Lcom/horcrux/svg/VirtualView;->mScale:F

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v43

    mul-double v9, v9, v7

    int-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v7

    sub-double/2addr v0, v9

    goto :goto_11

    :cond_15
    if-eqz v12, :cond_16

    .line 717
    invoke-interface {v12, v10}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v12, v9}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 718
    invoke-interface {v12, v9}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 719
    invoke-interface {v12, v10}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v7

    .line 720
    invoke-interface {v7, v8}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 721
    invoke-interface {v7, v8}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v7

    const-string v8, "ySubscriptYOffset"

    .line 722
    invoke-interface {v7, v8}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 723
    invoke-interface {v7, v8}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 724
    iget v9, v6, Lcom/horcrux/svg/VirtualView;->mScale:F

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v43

    mul-double v9, v9, v7

    int-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v7

    add-double/2addr v0, v9

    .line 755
    :cond_16
    :goto_11
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 756
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 757
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    const/16 v7, 0x9

    new-array v10, v7, [F

    new-array v9, v7, [F

    .line 762
    iget-object v7, v6, Lcom/horcrux/svg/TSpanView;->emoji:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 763
    iget-object v7, v6, Lcom/horcrux/svg/TSpanView;->emojiTransforms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const/4 v8, 0x0

    :goto_12
    if-ge v8, v13, :cond_28

    .line 766
    aget-char v7, v19, v8

    .line 767
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v21

    .line 768
    aget-boolean v34, v28, v8

    if-eqz v34, :cond_17

    const-string v21, ""

    move-object/from16 v6, v21

    const/16 v36, 0x0

    move/from16 v21, v13

    goto :goto_15

    :cond_17
    move-object/from16 v62, v21

    const/16 v24, 0x1

    const/16 v36, 0x0

    move/from16 v21, v8

    :goto_13
    add-int/lit8 v2, v21, 0x1

    if-ge v2, v13, :cond_19

    .line 780
    aget v21, v29, v2

    const/16 v37, 0x0

    cmpl-float v21, v21, v37

    if-lez v21, :cond_18

    goto :goto_14

    :cond_18
    move/from16 v21, v13

    .line 784
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v62

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v6, v19, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    const/4 v6, 0x1

    .line 785
    aput-boolean v6, v28, v2

    const/16 v24, 0x1

    const/16 v36, 0x1

    move-object/from16 v6, p0

    move/from16 v13, v21

    move/from16 v21, v2

    goto :goto_13

    :cond_19
    :goto_14
    move/from16 v21, v13

    move-object/from16 v6, v62

    .line 790
    :goto_15
    invoke-virtual {v14, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v51

    if-eqz v27, :cond_1a

    .line 802
    aget v2, v29, v8

    move-wide/from16 v38, v0

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v51

    sub-double/2addr v0, v13

    move-wide/from16 v22, v0

    goto :goto_16

    :cond_1a
    move-wide/from16 v38, v0

    :goto_16
    const/16 v0, 0x20

    if-ne v7, v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_17

    :cond_1b
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_1c

    move-wide/from16 v1, v25

    goto :goto_18

    :cond_1c
    move-wide/from16 v1, v17

    :goto_18
    add-double v1, v1, v30

    add-double/2addr v1, v13

    if-eqz v34, :cond_1d

    move-object/from16 v40, v6

    move/from16 v43, v7

    move/from16 v42, v8

    move-wide/from16 v7, v17

    goto :goto_19

    :cond_1d
    add-double v40, v22, v1

    move/from16 v43, v7

    move/from16 v42, v8

    move-wide/from16 v7, v40

    move-object/from16 v40, v6

    :goto_19
    move-object/from16 v6, v50

    .line 811
    invoke-virtual {v6, v7, v8}, Lcom/horcrux/svg/GlyphContext;->nextX(D)D

    move-result-wide v7

    move-object/from16 v44, v9

    move-object/from16 v41, v10

    .line 812
    invoke-virtual {v6}, Lcom/horcrux/svg/GlyphContext;->nextY()D

    move-result-wide v9

    .line 813
    invoke-virtual {v6}, Lcom/horcrux/svg/GlyphContext;->nextDeltaX()D

    move-result-wide v62

    .line 814
    invoke-virtual {v6}, Lcom/horcrux/svg/GlyphContext;->nextDeltaY()D

    move-result-wide v64

    move-wide/from16 v66, v9

    .line 815
    invoke-virtual {v6}, Lcom/horcrux/svg/GlyphContext;->nextRotation()D

    move-result-wide v9

    if-nez v34, :cond_27

    if-eqz v0, :cond_1e

    goto/16 :goto_1f

    .line 823
    :cond_1e
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v4

    .line 824
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v4

    add-double v7, v7, v62

    .line 825
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v4

    add-double v7, v32, v7

    sub-double/2addr v7, v1

    if-eqz v16, :cond_24

    add-double v0, v7, v13

    div-double v13, v13, v46

    move-wide/from16 v62, v9

    add-double v9, v7, v13

    cmpl-double v2, v9, v60

    if-lez v2, :cond_1f

    goto/16 :goto_1f

    :cond_1f
    cmpg-double v2, v9, v55

    if-gez v2, :cond_20

    goto/16 :goto_1f

    :cond_20
    const/4 v2, 0x3

    if-eqz v15, :cond_21

    double-to-float v0, v9

    move-object/from16 v1, v49

    .line 868
    invoke-virtual {v1, v0, v12, v2}, Landroid/graphics/PathMeasure;->getMatrix(FLandroid/graphics/Matrix;I)Z

    move-object/from16 p1, v3

    move-object/from16 v50, v6

    move/from16 v45, v15

    move-object/from16 v15, v41

    move-wide/from16 v9, v53

    goto/16 :goto_1c

    :cond_21
    move-object/from16 v2, v49

    cmpg-double v45, v7, v17

    if-gez v45, :cond_22

    move-object/from16 v50, v6

    move/from16 v45, v15

    const/4 v6, 0x3

    const/4 v15, 0x0

    .line 887
    invoke-virtual {v2, v15, v3, v6}, Landroid/graphics/PathMeasure;->getMatrix(FLandroid/graphics/Matrix;I)Z

    double-to-float v6, v7

    .line 888
    invoke-virtual {v3, v6, v15}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    const/4 v15, 0x1

    goto :goto_1a

    :cond_22
    move-object/from16 v50, v6

    move/from16 v45, v15

    double-to-float v6, v7

    const/4 v15, 0x1

    .line 890
    invoke-virtual {v2, v6, v3, v15}, Landroid/graphics/PathMeasure;->getMatrix(FLandroid/graphics/Matrix;I)Z

    :goto_1a
    double-to-float v6, v9

    .line 893
    invoke-virtual {v2, v6, v12, v15}, Landroid/graphics/PathMeasure;->getMatrix(FLandroid/graphics/Matrix;I)Z

    cmpl-double v6, v0, v53

    if-lez v6, :cond_23

    move-wide/from16 v9, v53

    double-to-float v6, v9

    const/4 v7, 0x3

    .line 896
    invoke-virtual {v2, v6, v11, v7}, Landroid/graphics/PathMeasure;->getMatrix(FLandroid/graphics/Matrix;I)Z

    sub-double/2addr v0, v9

    double-to-float v0, v0

    const/4 v1, 0x0

    .line 897
    invoke-virtual {v11, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_1b

    :cond_23
    move-wide/from16 v9, v53

    double-to-float v0, v0

    .line 899
    invoke-virtual {v2, v0, v11, v15}, Landroid/graphics/PathMeasure;->getMatrix(FLandroid/graphics/Matrix;I)Z

    :goto_1b
    move-object/from16 v0, v41

    .line 902
    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    move-object/from16 v1, v44

    .line 903
    invoke-virtual {v11, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v6, 0x2

    .line 905
    aget v7, v0, v6

    float-to-double v7, v7

    const/16 v24, 0x5

    .line 906
    aget v15, v0, v24

    move-object/from16 v49, v2

    move-object/from16 p1, v3

    float-to-double v2, v15

    .line 907
    aget v15, v1, v6

    move-wide/from16 v53, v7

    float-to-double v6, v15

    .line 908
    aget v8, v1, v24

    move-object v15, v0

    float-to-double v0, v8

    .line 911
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static/range {v53 .. v54}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v6, v6, v53

    .line 912
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    .line 914
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v0, v0, v2

    .line 916
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    double-to-float v0, v0

    invoke-virtual {v12, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    :goto_1c
    neg-double v0, v13

    double-to-float v0, v0

    add-double v1, v64, v38

    double-to-float v1, v1

    .line 923
    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-wide/from16 v0, v57

    double-to-float v2, v0

    move/from16 v3, v59

    int-to-float v6, v3

    .line 924
    invoke-virtual {v12, v2, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    move-wide/from16 v13, v66

    double-to-float v2, v13

    const/4 v6, 0x0

    .line 925
    invoke-virtual {v12, v6, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1d

    :cond_24
    move-object/from16 p1, v3

    move-object/from16 v50, v6

    move-wide/from16 v62, v9

    move/from16 v45, v15

    move-object/from16 v15, v41

    move-wide/from16 v9, v53

    move-wide/from16 v0, v57

    move/from16 v3, v59

    move-wide/from16 v13, v66

    double-to-float v2, v7

    add-double v6, v13, v64

    add-double v6, v6, v38

    double-to-float v6, v6

    .line 927
    invoke-virtual {v12, v2, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :goto_1d
    move-wide/from16 v6, v62

    double-to-float v2, v6

    .line 930
    invoke-virtual {v12, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    if-eqz v36, :cond_25

    .line 935
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    const/4 v6, 0x0

    .line 936
    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x0

    const/16 v24, 0x0

    move-object/from16 v7, p2

    move/from16 v36, v42

    move-wide/from16 v42, v9

    move-object/from16 v8, v40

    move v9, v6

    move-object v6, v15

    const/4 v15, 0x1

    move v10, v13

    move-object/from16 v34, v11

    const/16 v35, 0x0

    move v11, v14

    move-object v13, v12

    move-object/from16 v14, v20

    move/from16 v12, v24

    move-object/from16 v68, v13

    move/from16 v20, v21

    move-object v13, v2

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    move-object v7, v2

    move-object/from16 v2, v48

    goto :goto_1e

    :cond_25
    move-object/from16 v34, v11

    move-object/from16 v68, v12

    move-object v6, v15

    move-object/from16 v14, v20

    move/from16 v20, v21

    move-object/from16 v8, v40

    move/from16 v36, v42

    move/from16 v7, v43

    move-object/from16 v2, v48

    const/4 v15, 0x1

    const/16 v35, 0x0

    move-wide/from16 v42, v9

    .line 938
    invoke-virtual {v2, v7, v8}, Lcom/horcrux/svg/GlyphPathBag;->getOrCreateAndCache(CLjava/lang/String;)Landroid/graphics/Path;

    move-result-object v7

    .line 940
    :goto_1e
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    .line 941
    invoke-virtual {v7, v9, v15}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 942
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_26

    .line 944
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v9, p3

    move-object/from16 v11, v68

    .line 945
    invoke-virtual {v9, v11}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    move-object/from16 v12, p0

    .line 946
    iget-object v7, v12, Lcom/horcrux/svg/TSpanView;->emoji:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    iget-object v7, v12, Lcom/horcrux/svg/TSpanView;->emojiTransforms:Ljava/util/ArrayList;

    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13, v11}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v13, p2

    .line 948
    invoke-virtual {v9, v8, v10, v10, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 949
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->restore()V

    goto :goto_20

    :cond_26
    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v9, p3

    move-object/from16 v11, v68

    .line 951
    invoke-virtual {v7, v11}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 952
    invoke-virtual {v14, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_20

    :cond_27
    :goto_1f
    move-object/from16 v13, p2

    move-object/from16 v9, p3

    move-object/from16 p1, v3

    move-object/from16 v50, v6

    move-object/from16 v34, v11

    move-object v11, v12

    move/from16 v45, v15

    move-object/from16 v14, v20

    move/from16 v20, v21

    move-object/from16 v6, v41

    move/from16 v36, v42

    move-object/from16 v2, v48

    move-wide/from16 v42, v53

    move-wide/from16 v0, v57

    move/from16 v3, v59

    const/4 v15, 0x1

    const/16 v35, 0x0

    move-object/from16 v12, p0

    :goto_20
    add-int/lit8 v8, v36, 0x1

    move-wide/from16 v57, v0

    move-object/from16 v48, v2

    move/from16 v59, v3

    move-object v10, v6

    move-object v6, v12

    move-wide/from16 v0, v38

    move-wide/from16 v53, v42

    move-object/from16 v9, v44

    move/from16 v15, v45

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move-object v12, v11

    move-object/from16 v11, v34

    move-object/from16 v69, v14

    move-object v14, v13

    move/from16 v13, v20

    move-object/from16 v20, v69

    goto/16 :goto_12

    :cond_28
    move-object v12, v6

    move-object/from16 v14, v20

    return-object v14

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTextAnchorOffset(Lcom/horcrux/svg/TextProperties$TextAnchor;D)D
    .locals 2

    .line 964
    sget-object v0, Lcom/horcrux/svg/TSpanView$1;->$SwitchMap$com$horcrux$svg$TextProperties$TextAnchor:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    neg-double p1, p2

    return-wide p1

    :cond_1
    neg-double p1, p2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private setupTextPath()V
    .locals 3

    .line 1039
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 1042
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/horcrux/svg/TextPathView;

    if-ne v1, v2, :cond_0

    .line 1043
    check-cast v0, Lcom/horcrux/svg/TextPathView;

    iput-object v0, p0, Lcom/horcrux/svg/TSpanView;->textPath:Lcom/horcrux/svg/TextPathView;

    goto :goto_1

    .line 1045
    :cond_0
    instance-of v1, v0, Lcom/horcrux/svg/TextView;

    if-nez v1, :cond_1

    goto :goto_1

    .line 1049
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method clearCache()V
    .locals 1

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/horcrux/svg/TSpanView;->mCachedPath:Landroid/graphics/Path;

    .line 75
    invoke-super {p0}, Lcom/horcrux/svg/TextView;->clearCache()V

    return-void
.end method

.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/horcrux/svg/TSpanView;->mContent:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/horcrux/svg/TSpanView;->emoji:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getTextRootGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/horcrux/svg/GlyphContext;->getFont()Lcom/horcrux/svg/FontData;

    move-result-object v1

    .line 85
    invoke-direct {p0, p2, v1}, Lcom/horcrux/svg/TSpanView;->applyTextPropertiesToPaint(Landroid/graphics/Paint;Lcom/horcrux/svg/FontData;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 87
    iget-object v2, p0, Lcom/horcrux/svg/TSpanView;->emoji:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 88
    iget-object v3, p0, Lcom/horcrux/svg/TSpanView;->emojiTransforms:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Matrix;

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 90
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    const/4 v3, 0x0

    .line 91
    invoke-virtual {p1, v2, v3, v3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/horcrux/svg/GroupView;->drawPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    goto :goto_1

    .line 97
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/VirtualView;->clip(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 98
    invoke-virtual {p0, p1, p2, p3}, Lcom/horcrux/svg/GroupView;->drawGroup(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    :goto_1
    return-void
.end method

.method getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/horcrux/svg/TSpanView;->mCachedPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    return-object v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/horcrux/svg/TSpanView;->mContent:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/TextView;->getGroupPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/TSpanView;->mCachedPath:Landroid/graphics/Path;

    .line 110
    iget-object p1, p0, Lcom/horcrux/svg/TSpanView;->mCachedPath:Landroid/graphics/Path;

    return-object p1

    .line 113
    :cond_1
    invoke-direct {p0}, Lcom/horcrux/svg/TSpanView;->setupTextPath()V

    .line 115
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->pushGlyphContext()V

    .line 116
    iget-object v0, p0, Lcom/horcrux/svg/TSpanView;->mContent:Ljava/lang/String;

    invoke-direct {p0, v0, p2, p1}, Lcom/horcrux/svg/TSpanView;->getLinePath(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/TSpanView;->mCachedPath:Landroid/graphics/Path;

    .line 117
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->popGlyphContext()V

    .line 119
    iget-object p1, p0, Lcom/horcrux/svg/TSpanView;->mCachedPath:Landroid/graphics/Path;

    return-object p1
.end method

.method getSubtreeTextChunksTotalAdvance(Landroid/graphics/Paint;)D
    .locals 8

    .line 123
    iget-wide v0, p0, Lcom/horcrux/svg/TextView;->cachedAdvance:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-wide v0, p0, Lcom/horcrux/svg/TextView;->cachedAdvance:D

    return-wide v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/horcrux/svg/TSpanView;->mContent:Ljava/lang/String;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-nez v0, :cond_3

    .line 129
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 130
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 131
    instance-of v4, v0, Lcom/horcrux/svg/TextView;

    if-eqz v4, :cond_1

    .line 132
    check-cast v0, Lcom/horcrux/svg/TextView;

    .line 133
    invoke-virtual {v0, p1}, Lcom/horcrux/svg/TextView;->getSubtreeTextChunksTotalAdvance(Landroid/graphics/Paint;)D

    move-result-wide v4

    add-double/2addr v2, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_2
    iput-wide v2, p0, Lcom/horcrux/svg/TextView;->cachedAdvance:D

    return-wide v2

    .line 141
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 144
    iput-wide v2, p0, Lcom/horcrux/svg/TextView;->cachedAdvance:D

    return-wide v2

    .line 148
    :cond_4
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getTextRootGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v4

    .line 149
    invoke-virtual {v4}, Lcom/horcrux/svg/GlyphContext;->getFont()Lcom/horcrux/svg/FontData;

    move-result-object v4

    .line 150
    invoke-direct {p0, p1, v4}, Lcom/horcrux/svg/TSpanView;->applyTextPropertiesToPaint(Landroid/graphics/Paint;Lcom/horcrux/svg/FontData;)V

    .line 152
    iget-wide v5, v4, Lcom/horcrux/svg/FontData;->letterSpacing:D

    cmpl-double v7, v5, v2

    if-nez v7, :cond_5

    .line 153
    iget-object v2, v4, Lcom/horcrux/svg/FontData;->fontVariantLigatures:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    sget-object v3, Lcom/horcrux/svg/TextProperties$FontVariantLigatures;->normal:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    .line 156
    :cond_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_7

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'rlig\', \'liga\', \'clig\', \'calt\', \'locl\', \'ccmp\', \'mark\', \'mkmk\',"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'kern\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_6

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'hlig\', \'cala\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lcom/horcrux/svg/FontData;->fontFeatureSettings:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    goto :goto_1

    .line 164
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'liga\' 0, \'clig\' 0, \'dlig\' 0, \'hlig\' 0, \'cala\' 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lcom/horcrux/svg/FontData;->fontFeatureSettings:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 166
    :goto_1
    iget-wide v1, v4, Lcom/horcrux/svg/FontData;->fontSize:D

    iget v3, p0, Lcom/horcrux/svg/VirtualView;->mScale:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    div-double/2addr v5, v1

    double-to-float v1, v5

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 169
    :cond_7
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/horcrux/svg/TextView;->cachedAdvance:D

    .line 170
    iget-wide v0, p0, Lcom/horcrux/svg/TextView;->cachedAdvance:D

    return-wide v0
.end method

.method hitTest([F)I
    .locals 4

    .line 1055
    iget-object v0, p0, Lcom/horcrux/svg/TSpanView;->mContent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1056
    invoke-super {p0, p1}, Lcom/horcrux/svg/GroupView;->hitTest([F)I

    move-result p1

    return p1

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mPath:Landroid/graphics/Path;

    const/4 v1, -0x1

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/horcrux/svg/VirtualView;->mInvertible:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/horcrux/svg/VirtualView;->mTransformInvertible:Z

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1063
    iget-object v2, p0, Lcom/horcrux/svg/VirtualView;->mInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 1064
    iget-object p1, p0, Lcom/horcrux/svg/VirtualView;->mInvTransform:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 p1, 0x0

    .line 1065
    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v2, 0x1

    .line 1066
    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1068
    iget-object v2, p0, Lcom/horcrux/svg/VirtualView;->mRegion:Landroid/graphics/Region;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/horcrux/svg/VirtualView;->mFillPath:Landroid/graphics/Path;

    if-eqz v2, :cond_2

    .line 1069
    invoke-virtual {p0, v2}, Lcom/horcrux/svg/RenderableView;->getRegion(Landroid/graphics/Path;)Landroid/graphics/Region;

    move-result-object v2

    iput-object v2, p0, Lcom/horcrux/svg/VirtualView;->mRegion:Landroid/graphics/Region;

    .line 1071
    :cond_2
    iget-object v2, p0, Lcom/horcrux/svg/VirtualView;->mRegion:Landroid/graphics/Region;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/horcrux/svg/VirtualView;->mPath:Landroid/graphics/Path;

    if-eqz v2, :cond_3

    .line 1072
    invoke-virtual {p0, v2}, Lcom/horcrux/svg/RenderableView;->getRegion(Landroid/graphics/Path;)Landroid/graphics/Region;

    move-result-object v2

    iput-object v2, p0, Lcom/horcrux/svg/VirtualView;->mRegion:Landroid/graphics/Region;

    .line 1074
    :cond_3
    iget-object v2, p0, Lcom/horcrux/svg/VirtualView;->mStrokeRegion:Landroid/graphics/Region;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/horcrux/svg/VirtualView;->mStrokePath:Landroid/graphics/Path;

    if-eqz v2, :cond_4

    .line 1075
    invoke-virtual {p0, v2}, Lcom/horcrux/svg/RenderableView;->getRegion(Landroid/graphics/Path;)Landroid/graphics/Region;

    move-result-object v2

    iput-object v2, p0, Lcom/horcrux/svg/VirtualView;->mStrokeRegion:Landroid/graphics/Region;

    .line 1077
    :cond_4
    iget-object v2, p0, Lcom/horcrux/svg/VirtualView;->mRegion:Landroid/graphics/Region;

    if-eqz v2, :cond_5

    .line 1078
    invoke-virtual {v2, p1, v0}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/horcrux/svg/VirtualView;->mStrokeRegion:Landroid/graphics/Region;

    if-eqz v2, :cond_9

    .line 1079
    invoke-virtual {v2, p1, v0}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    .line 1084
    :cond_6
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->getClipPath()Landroid/graphics/Path;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1086
    iget-object v3, p0, Lcom/horcrux/svg/VirtualView;->mClipRegionPath:Landroid/graphics/Path;

    if-eq v3, v2, :cond_7

    .line 1087
    iput-object v2, p0, Lcom/horcrux/svg/VirtualView;->mClipRegionPath:Landroid/graphics/Path;

    .line 1088
    invoke-virtual {p0, v2}, Lcom/horcrux/svg/RenderableView;->getRegion(Landroid/graphics/Path;)Landroid/graphics/Region;

    move-result-object v2

    iput-object v2, p0, Lcom/horcrux/svg/VirtualView;->mClipRegion:Landroid/graphics/Region;

    .line 1090
    :cond_7
    iget-object v2, p0, Lcom/horcrux/svg/VirtualView;->mClipRegion:Landroid/graphics/Region;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    .line 1095
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    return p1

    :cond_9
    :goto_0
    return v1
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/horcrux/svg/TSpanView;->mCachedPath:Landroid/graphics/Path;

    .line 70
    invoke-super {p0}, Lcom/horcrux/svg/TextView;->invalidate()V

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "content"
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/horcrux/svg/TSpanView;->mContent:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/horcrux/svg/TSpanView;->invalidate()V

    return-void
.end method
