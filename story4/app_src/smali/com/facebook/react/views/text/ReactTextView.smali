.class public Lcom/facebook/react/views/text/ReactTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "ReactTextView.java"

# interfaces
.implements Lcom/facebook/react/uimanager/ReactCompoundView;


# static fields
.field private static final EMPTY_LAYOUT_PARAMS:Landroid/view/ViewGroup$LayoutParams;


# instance fields
.field private mContainsImages:Z

.field private mDefaultGravityHorizontal:I

.field private mDefaultGravityVertical:I

.field private mEllipsizeLocation:Landroid/text/TextUtils$TruncateAt;

.field private mLinkifyMaskType:I

.field private mNotifyOnInlineViewLayout:Z

.field private mNumberOfLines:I

.field private mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

.field private mSpanned:Landroid/text/Spannable;

.field private mTextAlign:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/react/views/text/ReactTextView;->EMPTY_LAYOUT_PARAMS:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mTextAlign:I

    const v0, 0x7fffffff

    .line 52
    iput v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mNumberOfLines:I

    .line 53
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mEllipsizeLocation:Landroid/text/TextUtils$TruncateAt;

    .line 54
    iput p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mLinkifyMaskType:I

    .line 62
    new-instance p1, Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-direct {p1, p0}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    .line 64
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result p1

    const v0, 0x800007

    and-int/2addr p1, v0

    iput p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mDefaultGravityHorizontal:I

    .line 65
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result p1

    and-int/lit8 p1, p1, 0x70

    iput p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mDefaultGravityVertical:I

    return-void
.end method

.method private getReactContext()Lcom/facebook/react/bridge/ReactContext;
    .locals 2

    .line 88
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 89
    instance-of v1, v0, Landroidx/appcompat/widget/TintContextWrapper;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/widget/TintContextWrapper;

    .line 90
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    return-object v0
.end method

.method private inlineViewJson(IIIIII)Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 69
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "index"

    const-string v2, "visibility"

    const/16 v3, 0x8

    if-ne p1, v3, :cond_0

    const-string p1, "gone"

    .line 71
    invoke-interface {v0, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "visible"

    .line 74
    invoke-interface {v0, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    int-to-float p1, p3

    .line 76
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p1

    float-to-double p1, p1

    const-string p3, "left"

    invoke-interface {v0, p3, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    int-to-float p1, p4

    .line 77
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p1

    float-to-double p1, p1

    const-string p3, "top"

    invoke-interface {v0, p3, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    int-to-float p1, p5

    .line 78
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p1

    float-to-double p1, p1

    const-string p3, "right"

    invoke-interface {v0, p3, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    int-to-float p1, p6

    .line 79
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p1

    float-to-double p1, p1

    const-string p3, "bottom"

    invoke-interface {v0, p3, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    :cond_1
    const-string p1, "unknown"

    .line 81
    invoke-interface {v0, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getSpanned()Landroid/text/Spannable;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mSpanned:Landroid/text/Spannable;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 356
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mContainsImages:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 358
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 359
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    .line 360
    invoke-virtual {v2}, Lcom/facebook/react/views/text/TextInlineImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 361
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 365
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 394
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 395
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mContainsImages:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 397
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 398
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 399
    invoke-virtual {v2}, Lcom/facebook/react/views/text/TextInlineImageSpan;->onAttachedToWindow()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .line 370
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 371
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mContainsImages:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 373
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 374
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 375
    invoke-virtual {v2}, Lcom/facebook/react/views/text/TextInlineImageSpan;->onDetachedFromWindow()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 4

    .line 406
    invoke-super {p0}, Landroid/widget/TextView;->onFinishTemporaryDetach()V

    .line 407
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mContainsImages:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 409
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 410
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 411
    invoke-virtual {v2}, Lcom/facebook/react/views/text/TextInlineImageSpan;->onFinishTemporaryDetach()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v7, p0

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/views/text/ReactTextView;->getReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/text/Spanned;

    .line 120
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    .line 121
    invoke-interface {v9}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v1, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;

    .line 122
    iget-boolean v0, v7, Lcom/facebook/react/views/text/ReactTextView;->mNotifyOnInlineViewLayout:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v12

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v13, v0

    sub-int v14, p4, p2

    sub-int v15, p5, p3

    .line 126
    array-length v6, v12

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_13

    aget-object v0, v12, v5

    .line 127
    invoke-virtual {v0}, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;->getReactTag()I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/facebook/react/uimanager/UIManagerModule;->resolveView(I)Landroid/view/View;

    move-result-object v1

    .line 129
    invoke-interface {v9, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 130
    invoke-virtual {v10, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 131
    invoke-virtual {v10, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    const/16 v16, 0x1

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    .line 137
    invoke-virtual {v10, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {v10, v3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v17

    add-int v4, v4, v17

    if-ge v2, v4, :cond_11

    :cond_3
    iget v4, v7, Lcom/facebook/react/views/text/ReactTextView;->mNumberOfLines:I

    if-ge v3, v4, :cond_11

    .line 143
    invoke-virtual {v10, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    if-lt v2, v4, :cond_4

    goto/16 :goto_c

    .line 152
    :cond_4
    invoke-virtual {v0}, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;->getWidth()I

    move-result v4

    .line 153
    invoke-virtual {v0}, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;->getHeight()I

    move-result v0

    .line 156
    invoke-virtual {v10, v2}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v11

    move/from16 v17, v5

    .line 158
    invoke-virtual {v10, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    move/from16 p5, v6

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    .line 164
    :goto_3
    invoke-interface {v9}, Landroid/text/Spanned;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_7

    if-eqz v5, :cond_6

    .line 168
    invoke-virtual {v10, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    float-to-int v5, v5

    sub-int v5, v14, v5

    goto :goto_8

    .line 169
    :cond_6
    invoke-virtual {v10, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    float-to-int v5, v5

    goto :goto_7

    :cond_7
    if-ne v5, v11, :cond_8

    const/4 v6, 0x1

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_9

    .line 177
    invoke-virtual {v10, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    goto :goto_5

    .line 178
    :cond_9
    invoke-virtual {v10, v2}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v6

    :goto_5
    float-to-int v6, v6

    if-eqz v5, :cond_a

    .line 188
    invoke-virtual {v10, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v5, v6

    sub-int v5, v14, v5

    goto :goto_6

    :cond_a
    move v5, v6

    :goto_6
    if-eqz v11, :cond_b

    :goto_7
    sub-int/2addr v5, v4

    :cond_b
    :goto_8
    if-eqz v11, :cond_c

    .line 197
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v6

    goto :goto_9

    .line 198
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v6

    :goto_9
    add-int/2addr v5, v6

    add-int v6, p2, v5

    .line 203
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v11

    invoke-virtual {v10, v3}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v3

    add-int/2addr v11, v3

    sub-int/2addr v11, v0

    add-int v3, p3, v11

    if-le v14, v5, :cond_e

    if-gt v15, v11, :cond_d

    goto :goto_a

    :cond_d
    const/16 v16, 0x0

    :cond_e
    :goto_a
    if-eqz v16, :cond_f

    const/16 v5, 0x8

    goto :goto_b

    :cond_f
    const/4 v5, 0x0

    :goto_b
    add-int v11, v6, v4

    add-int v4, v3, v0

    .line 214
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 215
    invoke-virtual {v1, v6, v3, v11, v4}, Landroid/view/View;->layout(IIII)V

    .line 216
    iget-boolean v0, v7, Lcom/facebook/react/views/text/ReactTextView;->mNotifyOnInlineViewLayout:Z

    if-eqz v0, :cond_10

    move-object/from16 v0, p0

    move v1, v5

    move v5, v3

    move v3, v6

    move v6, v4

    move v4, v5

    move/from16 v16, v17

    move v5, v11

    move/from16 v11, p5

    .line 218
    invoke-direct/range {v0 .. v6}, Lcom/facebook/react/views/text/ReactTextView;->inlineViewJson(IIIIII)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 217
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_10
    move/from16 v11, p5

    move/from16 v16, v17

    goto :goto_d

    :cond_11
    :goto_c
    move/from16 v16, v5

    move v11, v6

    const/16 v0, 0x8

    .line 147
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 148
    iget-boolean v0, v7, Lcom/facebook/react/views/text/ReactTextView;->mNotifyOnInlineViewLayout:Z

    if-eqz v0, :cond_12

    const/16 v1, 0x8

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    .line 149
    invoke-direct/range {v0 .. v6}, Lcom/facebook/react/views/text/ReactTextView;->inlineViewJson(IIIIII)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_d
    add-int/lit8 v5, v16, 0x1

    move v6, v11

    const/4 v11, 0x0

    goto/16 :goto_1

    .line 223
    :cond_13
    iget-boolean v0, v7, Lcom/facebook/react/views/text/ReactTextView;->mNotifyOnInlineViewLayout:Z

    if-eqz v0, :cond_15

    .line 224
    new-instance v0, Lcom/facebook/react/views/text/ReactTextView$1;

    invoke-direct {v0, v7}, Lcom/facebook/react/views/text/ReactTextView$1;-><init>(Lcom/facebook/react/views/text/ReactTextView;)V

    invoke-static {v13, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 232
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 233
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 234
    check-cast v2, Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_e

    .line 237
    :cond_14
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "inlineViews"

    .line 238
    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    .line 239
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/views/text/ReactTextView;->getReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    const-class v2, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {v0, v2}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 240
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getId()I

    move-result v2

    const-string v3, "topInlineViewLayout"

    .line 239
    invoke-interface {v0, v2, v3, v1}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    :cond_15
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 4

    .line 382
    invoke-super {p0}, Landroid/widget/TextView;->onStartTemporaryDetach()V

    .line 383
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mContainsImages:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 385
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 386
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 387
    invoke-virtual {v2}, Lcom/facebook/react/views/text/TextInlineImageSpan;->onStartTemporaryDetach()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reactTagForTouch(FF)I
    .locals 6

    .line 289
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 290
    invoke-virtual {p0}, Landroid/widget/TextView;->getId()I

    move-result v1

    float-to-int p1, p1

    float-to-int p2, p2

    .line 295
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    .line 301
    :cond_0
    invoke-virtual {v2, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p2

    .line 303
    invoke-virtual {v2, p2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    float-to-int v3, v3

    .line 304
    invoke-virtual {v2, p2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    float-to-int v4, v4

    .line 307
    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_2

    if-lt p1, v3, :cond_2

    if-gt p1, v4, :cond_2

    .line 308
    move-object v3, v0

    check-cast v3, Landroid/text/Spanned;

    int-to-float p1, p1

    .line 311
    :try_start_0
    invoke-virtual {v2, p2, p1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    const-class p2, Lcom/facebook/react/views/text/ReactTagSpan;

    invoke-interface {v3, p1, p1, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/facebook/react/views/text/ReactTagSpan;

    if-eqz p2, :cond_2

    .line 325
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x0

    .line 326
    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_2

    .line 327
    aget-object v4, p2, v2

    invoke-interface {v3, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 328
    aget-object v5, p2, v2

    invoke-interface {v3, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-le v5, p1, :cond_1

    sub-int/2addr v5, v4

    if-gt v5, v0, :cond_1

    .line 330
    aget-object v0, p2, v2

    invoke-virtual {v0}, Lcom/facebook/react/views/text/ReactTagSpan;->getReactTag()I

    move-result v1

    move v0, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 314
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Crash in HorizontalMeasurementProvider: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ReactNative"

    invoke-static {p2, p1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v1
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBackgroundColor(I)V

    return-void
.end method

.method public setBorderColor(IFF)V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderColor(IFF)V

    return-void
.end method

.method public setBorderRadius(F)V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderRadius(F)V

    return-void
.end method

.method public setBorderRadius(FI)V
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderRadius(FI)V

    return-void
.end method

.method public setBorderStyle(Ljava/lang/String;)V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderStyle(Ljava/lang/String;)V

    return-void
.end method

.method public setBorderWidth(IF)V
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderWidth(IF)V

    return-void
.end method

.method public setEllipsizeLocation(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mEllipsizeLocation:Landroid/text/TextUtils$TruncateAt;

    return-void
.end method

.method setGravityHorizontal(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 423
    iget p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mDefaultGravityHorizontal:I

    .line 426
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, -0x8

    const v1, -0x800008

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    .line 425
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method setGravityVertical(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 432
    iget p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mDefaultGravityVertical:I

    .line 434
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public setLinkifyMask(I)V
    .locals 0

    .line 490
    iput p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mLinkifyMaskType:I

    return-void
.end method

.method public setNotifyOnInlineViewLayout(Z)V
    .locals 0

    .line 448
    iput-boolean p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mNotifyOnInlineViewLayout:Z

    return-void
.end method

.method public setNumberOfLines(I)V
    .locals 1

    if-nez p1, :cond_0

    const p1, 0x7fffffff

    .line 438
    :cond_0
    iput p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mNumberOfLines:I

    .line 439
    iget p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mNumberOfLines:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 440
    iget p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mNumberOfLines:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method

.method public setSpanned(Landroid/text/Spannable;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mSpanned:Landroid/text/Spannable;

    return-void
.end method

.method public setText(Lcom/facebook/react/views/text/ReactTextUpdate;)V
    .locals 5

    .line 248
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->containsImages()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mContainsImages:Z

    .line 252
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 253
    sget-object v0, Lcom/facebook/react/views/text/ReactTextView;->EMPTY_LAYOUT_PARAMS:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getText()Landroid/text/Spannable;

    move-result-object v0

    .line 256
    iget v1, p0, Lcom/facebook/react/views/text/ReactTextView;->mLinkifyMaskType:I

    if-lez v1, :cond_1

    .line 257
    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 258
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 260
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getPaddingLeft()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 263
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getPaddingTop()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 264
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getPaddingRight()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 265
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getPaddingBottom()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 261
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 267
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getTextAlign()I

    move-result v0

    .line 268
    iget v1, p0, Lcom/facebook/react/views/text/ReactTextView;->mTextAlign:I

    if-eq v1, v0, :cond_2

    .line 269
    iput v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mTextAlign:I

    .line 271
    :cond_2
    iget v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mTextAlign:I

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/ReactTextView;->setGravityHorizontal(I)V

    .line 272
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 273
    invoke-virtual {p0}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getTextBreakStrategy()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 274
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getTextBreakStrategy()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBreakStrategy(I)V

    .line 277
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_4

    .line 278
    invoke-virtual {p0}, Landroid/widget/TextView;->getJustificationMode()I

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getJustificationMode()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 279
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getJustificationMode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setJustificationMode(I)V

    .line 284
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public updateView()V
    .locals 2

    .line 452
    iget v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mNumberOfLines:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mEllipsizeLocation:Landroid/text/TextUtils$TruncateAt;

    .line 453
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 4

    .line 342
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mContainsImages:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 343
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 344
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 345
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    .line 346
    invoke-virtual {v2}, Lcom/facebook/react/views/text/TextInlineImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 351
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    return p1
.end method
