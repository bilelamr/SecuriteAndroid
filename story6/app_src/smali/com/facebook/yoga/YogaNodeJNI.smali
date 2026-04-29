.class public Lcom/facebook/yoga/YogaNodeJNI;
.super Lcom/facebook/yoga/YogaNodeJNIBase;
.source "YogaNodeJNI.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# instance fields
.field private mBorderBottom:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mBorderLeft:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mBorderRight:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mBorderTop:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mDoesLegacyStretchFlagAffectsLayout:Z
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mHasNewLayout:Z
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mHeight:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mLayoutDirection:I
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mLeft:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mMarginBottom:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mMarginLeft:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mMarginRight:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mMarginTop:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mPaddingBottom:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mPaddingLeft:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mPaddingRight:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mPaddingTop:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mTop:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mWidth:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/facebook/yoga/YogaNodeJNIBase;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 14
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mWidth:F

    .line 16
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mHeight:F

    .line 18
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mTop:F

    .line 20
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mLeft:F

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mMarginLeft:F

    .line 24
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mMarginTop:F

    .line 26
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mMarginRight:F

    .line 28
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mMarginBottom:F

    .line 30
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mPaddingLeft:F

    .line 32
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mPaddingTop:F

    .line 34
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mPaddingRight:F

    .line 36
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mPaddingBottom:F

    .line 38
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mBorderLeft:F

    .line 40
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mBorderTop:F

    .line 42
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mBorderRight:F

    .line 44
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mBorderBottom:F

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mLayoutDirection:I

    const/4 v1, 0x1

    .line 48
    iput-boolean v1, p0, Lcom/facebook/yoga/YogaNodeJNI;->mHasNewLayout:Z

    .line 50
    iput-boolean v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mDoesLegacyStretchFlagAffectsLayout:Z

    return-void
.end method

.method public constructor <init>(Lcom/facebook/yoga/YogaConfig;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Lcom/facebook/yoga/YogaNodeJNIBase;-><init>(Lcom/facebook/yoga/YogaConfig;)V

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 14
    iput p1, p0, Lcom/facebook/yoga/YogaNodeJNI;->mWidth:F

    .line 16
    iput p1, p0, Lcom/facebook/yoga/YogaNodeJNI;->mHeight:F

    .line 18
    iput p1, p0, Lcom/facebook/yoga/YogaNodeJNI;->mTop:F

    .line 20
    iput p1, p0, Lcom/facebook/yoga/YogaNodeJNI;->mLeft:F

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/facebook/yoga/YogaNodeJNI;->mMarginLeft:F

    .line 24
    iput p1, p0, Lcom/facebook/yoga/YogaNodeJNI;->mMarginTop:F

    .line 26
    iput p1, p0, Lcom/facebook/yoga/YogaNodeJNI;->mMarginRight:F

    .line 28
    iput p1, p0, Lcom/facebook/yoga/YogaNodeJNI;->mMarginBottom:F

    .line 30
    iput p1, p0, Lcom/facebook/yoga/YogaNodeJNI;->mPaddingLeft:F

    .line 32
    iput p1, p0, Lcom/facebook/yoga/YogaNodeJNI;->mPaddingTop:F

    .line 34
    iput p1, p0, Lcom/facebook/yoga/YogaNodeJNI;->mPaddingRight:F

    .line 36
    iput p1, p0, Lcom/facebook/yoga/YogaNodeJNI;->mPaddingBottom:F

    .line 38
    iput p1, p0, Lcom/facebook/yoga/YogaNodeJNI;->mBorderLeft:F

    .line 40
    iput p1, p0, Lcom/facebook/yoga/YogaNodeJNI;->mBorderTop:F

    .line 42
    iput p1, p0, Lcom/facebook/yoga/YogaNodeJNI;->mBorderRight:F

    .line 44
    iput p1, p0, Lcom/facebook/yoga/YogaNodeJNI;->mBorderBottom:F

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/facebook/yoga/YogaNodeJNI;->mLayoutDirection:I

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mHasNewLayout:Z

    .line 50
    iput-boolean p1, p0, Lcom/facebook/yoga/YogaNodeJNI;->mDoesLegacyStretchFlagAffectsLayout:Z

    return-void
.end method


# virtual methods
.method public getLayoutDirection()Lcom/facebook/yoga/YogaDirection;
    .locals 1

    .line 184
    iget v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mLayoutDirection:I

    invoke-static {v0}, Lcom/facebook/yoga/YogaDirection;->fromInt(I)Lcom/facebook/yoga/YogaDirection;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutHeight()F
    .locals 1

    .line 114
    iget v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mHeight:F

    return v0
.end method

.method public getLayoutPadding(Lcom/facebook/yoga/YogaEdge;)F
    .locals 1

    .line 144
    sget-object v0, Lcom/facebook/yoga/YogaNodeJNI$1;->$SwitchMap$com$facebook$yoga$YogaEdge:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 158
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot get layout paddings of multi-edge shorthands"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :pswitch_0
    invoke-virtual {p0}, Lcom/facebook/yoga/YogaNodeJNI;->getLayoutDirection()Lcom/facebook/yoga/YogaDirection;

    move-result-object p1

    sget-object v0, Lcom/facebook/yoga/YogaDirection;->RTL:Lcom/facebook/yoga/YogaDirection;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/facebook/yoga/YogaNodeJNI;->mPaddingLeft:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/facebook/yoga/YogaNodeJNI;->mPaddingRight:F

    :goto_0
    return p1

    .line 154
    :pswitch_1
    invoke-virtual {p0}, Lcom/facebook/yoga/YogaNodeJNI;->getLayoutDirection()Lcom/facebook/yoga/YogaDirection;

    move-result-object p1

    sget-object v0, Lcom/facebook/yoga/YogaDirection;->RTL:Lcom/facebook/yoga/YogaDirection;

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/facebook/yoga/YogaNodeJNI;->mPaddingRight:F

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/facebook/yoga/YogaNodeJNI;->mPaddingLeft:F

    :goto_1
    return p1

    .line 152
    :pswitch_2
    iget p1, p0, Lcom/facebook/yoga/YogaNodeJNI;->mPaddingBottom:F

    return p1

    .line 150
    :pswitch_3
    iget p1, p0, Lcom/facebook/yoga/YogaNodeJNI;->mPaddingRight:F

    return p1

    .line 148
    :pswitch_4
    iget p1, p0, Lcom/facebook/yoga/YogaNodeJNI;->mPaddingTop:F

    return p1

    .line 146
    :pswitch_5
    iget p1, p0, Lcom/facebook/yoga/YogaNodeJNI;->mPaddingLeft:F

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLayoutWidth()F
    .locals 1

    .line 109
    iget v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mWidth:F

    return v0
.end method

.method public getLayoutX()F
    .locals 1

    .line 99
    iget v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mLeft:F

    return v0
.end method

.method public getLayoutY()F
    .locals 1

    .line 104
    iget v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mTop:F

    return v0
.end method

.method public hasNewLayout()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mHasNewLayout:Z

    return v0
.end method

.method public markLayoutSeen()V
    .locals 1

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mHasNewLayout:Z

    return-void
.end method

.method public reset()V
    .locals 1

    .line 63
    invoke-super {p0}, Lcom/facebook/yoga/YogaNodeJNIBase;->reset()V

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mHasNewLayout:Z

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 66
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mWidth:F

    .line 67
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mHeight:F

    .line 68
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mTop:F

    .line 69
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mLeft:F

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mMarginLeft:F

    .line 71
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mMarginTop:F

    .line 72
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mMarginRight:F

    .line 73
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mMarginBottom:F

    .line 74
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mPaddingLeft:F

    .line 75
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mPaddingTop:F

    .line 76
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mPaddingRight:F

    .line 77
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mPaddingBottom:F

    .line 78
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mBorderLeft:F

    .line 79
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mBorderTop:F

    .line 80
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mBorderRight:F

    .line 81
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mBorderBottom:F

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mLayoutDirection:I

    .line 84
    iput-boolean v0, p0, Lcom/facebook/yoga/YogaNodeJNI;->mDoesLegacyStretchFlagAffectsLayout:Z

    return-void
.end method
