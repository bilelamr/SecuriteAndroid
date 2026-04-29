.class Lcom/horcrux/svg/TextView;
.super Lcom/horcrux/svg/GroupView;
.source "TextView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field cachedAdvance:D

.field mAlignmentBaseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

.field mBaselineShift:Ljava/lang/String;

.field mDeltaX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/SVGLength;",
            ">;"
        }
    .end annotation
.end field

.field mDeltaY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/SVGLength;",
            ">;"
        }
    .end annotation
.end field

.field mLengthAdjust:Lcom/horcrux/svg/TextProperties$TextLengthAdjust;

.field mPositionX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/SVGLength;",
            ">;"
        }
    .end annotation
.end field

.field mPositionY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/SVGLength;",
            ">;"
        }
    .end annotation
.end field

.field mRotate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/SVGLength;",
            ">;"
        }
    .end annotation
.end field

.field mTextLength:Lcom/horcrux/svg/SVGLength;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 2

    .line 45
    invoke-direct {p0, p1}, Lcom/horcrux/svg/GroupView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/horcrux/svg/TextView;->mTextLength:Lcom/horcrux/svg/SVGLength;

    .line 34
    iput-object p1, p0, Lcom/horcrux/svg/TextView;->mBaselineShift:Ljava/lang/String;

    .line 35
    sget-object p1, Lcom/horcrux/svg/TextProperties$TextLengthAdjust;->spacing:Lcom/horcrux/svg/TextProperties$TextLengthAdjust;

    iput-object p1, p0, Lcom/horcrux/svg/TextView;->mLengthAdjust:Lcom/horcrux/svg/TextProperties$TextLengthAdjust;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 42
    iput-wide v0, p0, Lcom/horcrux/svg/TextView;->cachedAdvance:D

    return-void
.end method


# virtual methods
.method clearCache()V
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 58
    iput-wide v0, p0, Lcom/horcrux/svg/TextView;->cachedAdvance:D

    .line 59
    invoke-super {p0}, Lcom/horcrux/svg/VirtualView;->clearCache()V

    return-void
.end method

.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 1

    const v0, 0x3c23d70a    # 0.01f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 141
    invoke-virtual {p0, p1}, Lcom/horcrux/svg/GroupView;->setupGlyphContext(Landroid/graphics/Canvas;)V

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/VirtualView;->clip(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/TextView;->getGroupPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    .line 144
    invoke-virtual {p0, p1, p2, p3}, Lcom/horcrux/svg/GroupView;->drawGroup(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    :cond_0
    return-void
.end method

.method getAlignmentBaseline()Lcom/horcrux/svg/TextProperties$AlignmentBaseline;
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/horcrux/svg/TextView;->mAlignmentBaseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    if-nez v0, :cond_1

    .line 164
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 166
    instance-of v1, v0, Lcom/horcrux/svg/TextView;

    if-eqz v1, :cond_0

    .line 167
    move-object v1, v0

    check-cast v1, Lcom/horcrux/svg/TextView;

    .line 168
    iget-object v1, v1, Lcom/horcrux/svg/TextView;->mAlignmentBaseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    if-eqz v1, :cond_0

    .line 170
    iput-object v1, p0, Lcom/horcrux/svg/TextView;->mAlignmentBaseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    return-object v1

    .line 174
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/horcrux/svg/TextView;->mAlignmentBaseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    if-nez v0, :cond_2

    .line 178
    sget-object v0, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->baseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    iput-object v0, p0, Lcom/horcrux/svg/TextView;->mAlignmentBaseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/horcrux/svg/TextView;->mAlignmentBaseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    return-object v0
.end method

.method getBaselineShift()Ljava/lang/String;
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/horcrux/svg/TextView;->mBaselineShift:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 185
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 187
    instance-of v1, v0, Lcom/horcrux/svg/TextView;

    if-eqz v1, :cond_0

    .line 188
    move-object v1, v0

    check-cast v1, Lcom/horcrux/svg/TextView;

    .line 189
    iget-object v1, v1, Lcom/horcrux/svg/TextView;->mBaselineShift:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 191
    iput-object v1, p0, Lcom/horcrux/svg/TextView;->mBaselineShift:Ljava/lang/String;

    return-object v1

    .line 195
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/horcrux/svg/TextView;->mBaselineShift:Ljava/lang/String;

    return-object v0
.end method

.method getGroupPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    return-object v0

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->pushGlyphContext()V

    .line 206
    invoke-super {p0, p1, p2}, Lcom/horcrux/svg/GroupView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/VirtualView;->mPath:Landroid/graphics/Path;

    .line 207
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->popGlyphContext()V

    .line 209
    iget-object p1, p0, Lcom/horcrux/svg/VirtualView;->mPath:Landroid/graphics/Path;

    return-object p1
.end method

.method getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    return-object v0

    .line 153
    :cond_0
    invoke-virtual {p0, p1}, Lcom/horcrux/svg/GroupView;->setupGlyphContext(Landroid/graphics/Canvas;)V

    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/TextView;->getGroupPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Region$Op;)Landroid/graphics/Path;
    .locals 0

    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/TextView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method getSubtreeTextChunksTotalAdvance(Landroid/graphics/Paint;)D
    .locals 5

    .line 234
    iget-wide v0, p0, Lcom/horcrux/svg/TextView;->cachedAdvance:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-wide v0, p0, Lcom/horcrux/svg/TextView;->cachedAdvance:D

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 238
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 239
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 240
    instance-of v4, v3, Lcom/horcrux/svg/TextView;

    if-eqz v4, :cond_1

    .line 241
    check-cast v3, Lcom/horcrux/svg/TextView;

    .line 242
    invoke-virtual {v3, p1}, Lcom/horcrux/svg/TextView;->getSubtreeTextChunksTotalAdvance(Landroid/graphics/Paint;)D

    move-result-wide v3

    add-double/2addr v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    :cond_2
    iput-wide v0, p0, Lcom/horcrux/svg/TextView;->cachedAdvance:D

    return-wide v0
.end method

.method getTextAnchorRoot()Lcom/horcrux/svg/TextView;
    .locals 6

    .line 219
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getTextRootGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v0

    .line 220
    iget-object v0, v0, Lcom/horcrux/svg/GlyphContext;->mFontContext:Ljava/util/ArrayList;

    .line 222
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 223
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object v3, v1

    move-object v1, p0

    :goto_0
    if-ltz v2, :cond_1

    .line 224
    instance-of v4, v3, Lcom/horcrux/svg/TextView;

    if-eqz v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/horcrux/svg/FontData;

    iget-object v4, v4, Lcom/horcrux/svg/FontData;->textAnchor:Lcom/horcrux/svg/TextProperties$TextAnchor;

    sget-object v5, Lcom/horcrux/svg/TextProperties$TextAnchor;->start:Lcom/horcrux/svg/TextProperties$TextAnchor;

    if-eq v4, v5, :cond_1

    iget-object v4, v1, Lcom/horcrux/svg/TextView;->mPositionX:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    goto :goto_1

    .line 227
    :cond_0
    move-object v1, v3

    check-cast v1, Lcom/horcrux/svg/TextView;

    .line 228
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method

.method getTextContainer()Lcom/horcrux/svg/TextView;
    .locals 3

    .line 251
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v1, p0

    .line 252
    :goto_0
    instance-of v2, v0, Lcom/horcrux/svg/TextView;

    if-eqz v2, :cond_0

    .line 253
    move-object v1, v0

    check-cast v1, Lcom/horcrux/svg/TextView;

    .line 254
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public invalidate()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-super {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    .line 54
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->getTextContainer()Lcom/horcrux/svg/TextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/horcrux/svg/VirtualView;->clearChildCache()V

    return-void
.end method

.method pushGlyphContext()V
    .locals 10

    .line 214
    instance-of v0, p0, Lcom/horcrux/svg/TextPathView;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/horcrux/svg/TSpanView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 215
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getTextRootGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v1

    iget-object v4, p0, Lcom/horcrux/svg/GroupView;->mFont:Lcom/facebook/react/bridge/ReadableMap;

    iget-object v5, p0, Lcom/horcrux/svg/TextView;->mPositionX:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/horcrux/svg/TextView;->mPositionY:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/horcrux/svg/TextView;->mDeltaX:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/horcrux/svg/TextView;->mDeltaY:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/horcrux/svg/TextView;->mRotate:Ljava/util/ArrayList;

    move-object v3, p0

    invoke-virtual/range {v1 .. v9}, Lcom/horcrux/svg/GlyphContext;->pushContext(ZLcom/horcrux/svg/TextView;Lcom/facebook/react/bridge/ReadableMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public setBaselineShift(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "baselineShift"
    .end annotation

    .line 82
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->toString(Lcom/facebook/react/bridge/Dynamic;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/TextView;->mBaselineShift:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->invalidate()V

    return-void
.end method

.method public setDeltaX(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "dx"
    .end annotation

    .line 116
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->arrayFrom(Lcom/facebook/react/bridge/Dynamic;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/TextView;->mDeltaX:Ljava/util/ArrayList;

    .line 117
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->invalidate()V

    return-void
.end method

.method public setDeltaY(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "dy"
    .end annotation

    .line 122
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->arrayFrom(Lcom/facebook/react/bridge/Dynamic;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/TextView;->mDeltaY:Ljava/util/ArrayList;

    .line 123
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->invalidate()V

    return-void
.end method

.method public setLengthAdjust(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "lengthAdjust"
    .end annotation

    .line 70
    invoke-static {p1}, Lcom/horcrux/svg/TextProperties$TextLengthAdjust;->valueOf(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$TextLengthAdjust;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/TextView;->mLengthAdjust:Lcom/horcrux/svg/TextProperties$TextLengthAdjust;

    .line 71
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->invalidate()V

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "alignmentBaseline"
    .end annotation

    .line 76
    invoke-static {p1}, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->getEnum(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/TextView;->mAlignmentBaseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    .line 77
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->invalidate()V

    return-void
.end method

.method public setPositionX(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "x"
    .end annotation

    .line 128
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->arrayFrom(Lcom/facebook/react/bridge/Dynamic;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/TextView;->mPositionX:Ljava/util/ArrayList;

    .line 129
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->invalidate()V

    return-void
.end method

.method public setPositionY(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "y"
    .end annotation

    .line 134
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->arrayFrom(Lcom/facebook/react/bridge/Dynamic;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/TextView;->mPositionY:Ljava/util/ArrayList;

    .line 135
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->invalidate()V

    return-void
.end method

.method public setRotate(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "rotate"
    .end annotation

    .line 110
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->arrayFrom(Lcom/facebook/react/bridge/Dynamic;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/TextView;->mRotate:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->invalidate()V

    return-void
.end method

.method public setTextLength(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "textLength"
    .end annotation

    .line 64
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/TextView;->mTextLength:Lcom/horcrux/svg/SVGLength;

    .line 65
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->invalidate()V

    return-void
.end method

.method public setVerticalAlign(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "verticalAlign"
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x20

    .line 90
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 92
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->getEnum(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    move-result-object v2

    iput-object v2, p0, Lcom/horcrux/svg/TextView;->mAlignmentBaseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    sget-object v2, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->baseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    iput-object v2, p0, Lcom/horcrux/svg/TextView;->mAlignmentBaseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    :goto_0
    const/4 v2, 0x0

    .line 97
    :try_start_1
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/TextView;->mBaselineShift:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 99
    :catch_1
    iput-object v0, p0, Lcom/horcrux/svg/TextView;->mBaselineShift:Ljava/lang/String;

    goto :goto_1

    .line 102
    :cond_0
    sget-object p1, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->baseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    iput-object p1, p0, Lcom/horcrux/svg/TextView;->mAlignmentBaseline:Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    .line 103
    iput-object v0, p0, Lcom/horcrux/svg/TextView;->mBaselineShift:Ljava/lang/String;

    .line 105
    :goto_1
    invoke-virtual {p0}, Lcom/horcrux/svg/TextView;->invalidate()V

    return-void
.end method
