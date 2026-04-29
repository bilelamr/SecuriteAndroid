.class public Lcom/facebook/yoga/YogaNodeJNIBatching;
.super Lcom/facebook/yoga/YogaNodeJNIBase;
.source "YogaNodeJNIBatching.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# instance fields
.field private arr:[F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mHasNewLayout:Z

.field private mLayoutDirection:I
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/facebook/yoga/YogaNodeJNIBase;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/facebook/yoga/YogaNodeJNIBatching;->arr:[F

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNIBatching;->mLayoutDirection:I

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/facebook/yoga/YogaNodeJNIBatching;->mHasNewLayout:Z

    return-void
.end method

.method public constructor <init>(Lcom/facebook/yoga/YogaConfig;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/facebook/yoga/YogaNodeJNIBase;-><init>(Lcom/facebook/yoga/YogaConfig;)V

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/facebook/yoga/YogaNodeJNIBatching;->arr:[F

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/facebook/yoga/YogaNodeJNIBatching;->mLayoutDirection:I

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/facebook/yoga/YogaNodeJNIBatching;->mHasNewLayout:Z

    return-void
.end method


# virtual methods
.method public getLayoutDirection()Lcom/facebook/yoga/YogaDirection;
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/facebook/yoga/YogaNodeJNIBatching;->arr:[F

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    aget v0, v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/facebook/yoga/YogaNodeJNIBatching;->mLayoutDirection:I

    :goto_0
    invoke-static {v0}, Lcom/facebook/yoga/YogaDirection;->fromInt(I)Lcom/facebook/yoga/YogaDirection;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutHeight()F
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/facebook/yoga/YogaNodeJNIBatching;->arr:[F

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLayoutPadding(Lcom/facebook/yoga/YogaEdge;)F
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/facebook/yoga/YogaNodeJNIBatching;->arr:[F

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    aget v2, v0, v1

    float-to-int v2, v2

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3

    .line 109
    aget v0, v0, v1

    float-to-int v0, v0

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    rsub-int/lit8 v0, v1, 0xa

    .line 110
    sget-object v1, Lcom/facebook/yoga/YogaNodeJNIBatching$1;->$SwitchMap$com$facebook$yoga$YogaEdge:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    .line 124
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot get layout paddings of multi-edge shorthands"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :pswitch_0
    invoke-virtual {p0}, Lcom/facebook/yoga/YogaNodeJNIBatching;->getLayoutDirection()Lcom/facebook/yoga/YogaDirection;

    move-result-object p1

    sget-object v1, Lcom/facebook/yoga/YogaDirection;->RTL:Lcom/facebook/yoga/YogaDirection;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/facebook/yoga/YogaNodeJNIBatching;->arr:[F

    aget p1, p1, v0

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/facebook/yoga/YogaNodeJNIBatching;->arr:[F

    add-int/2addr v0, v3

    aget p1, p1, v0

    :goto_1
    return p1

    .line 120
    :pswitch_1
    invoke-virtual {p0}, Lcom/facebook/yoga/YogaNodeJNIBatching;->getLayoutDirection()Lcom/facebook/yoga/YogaDirection;

    move-result-object p1

    sget-object v1, Lcom/facebook/yoga/YogaDirection;->RTL:Lcom/facebook/yoga/YogaDirection;

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/facebook/yoga/YogaNodeJNIBatching;->arr:[F

    add-int/2addr v0, v3

    aget p1, p1, v0

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/facebook/yoga/YogaNodeJNIBatching;->arr:[F

    aget p1, p1, v0

    :goto_2
    return p1

    .line 118
    :pswitch_2
    iget-object p1, p0, Lcom/facebook/yoga/YogaNodeJNIBatching;->arr:[F

    add-int/lit8 v0, v0, 0x3

    aget p1, p1, v0

    return p1

    .line 116
    :pswitch_3
    iget-object p1, p0, Lcom/facebook/yoga/YogaNodeJNIBatching;->arr:[F

    add-int/2addr v0, v3

    aget p1, p1, v0

    return p1

    .line 114
    :pswitch_4
    iget-object p1, p0, Lcom/facebook/yoga/YogaNodeJNIBatching;->arr:[F

    add-int/2addr v0, v2

    aget p1, p1, v0

    return p1

    .line 112
    :pswitch_5
    iget-object p1, p0, Lcom/facebook/yoga/YogaNodeJNIBatching;->arr:[F

    aget p1, p1, v0

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1

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
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/facebook/yoga/YogaNodeJNIBatching;->arr:[F

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLayoutX()F
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/facebook/yoga/YogaNodeJNIBatching;->arr:[F

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLayoutY()F
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/facebook/yoga/YogaNodeJNIBatching;->arr:[F

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNewLayout()Z
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/facebook/yoga/YogaNodeJNIBatching;->arr:[F

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 164
    aget v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 166
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/yoga/YogaNodeJNIBatching;->mHasNewLayout:Z

    return v0
.end method

.method public markLayoutSeen()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/facebook/yoga/YogaNodeJNIBatching;->arr:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 173
    aget v2, v0, v1

    float-to-int v2, v2

    and-int/lit8 v2, v2, -0x11

    int-to-float v2, v2

    aput v2, v0, v1

    .line 175
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/yoga/YogaNodeJNIBatching;->mHasNewLayout:Z

    return-void
.end method

.method public reset()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/facebook/yoga/YogaNodeJNIBase;->reset()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/facebook/yoga/YogaNodeJNIBatching;->arr:[F

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/facebook/yoga/YogaNodeJNIBatching;->mHasNewLayout:Z

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/facebook/yoga/YogaNodeJNIBatching;->mLayoutDirection:I

    return-void
.end method
