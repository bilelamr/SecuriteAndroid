.class public Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;
.super Lcom/facebook/react/views/view/ReactViewGroup;
.source "ScreenStackHeaderSubview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;
    }
.end annotation


# instance fields
.field private mReactHeight:I

.field private mReactWidth:I

.field private mType:Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;-><init>(Landroid/content/Context;)V

    .line 42
    sget-object p1, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;->RIGHT:Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;->mType:Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;

    return-void
.end method


# virtual methods
.method public getType()Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;->mType:Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 23
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 24
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 26
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;->mReactWidth:I

    .line 27
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;->mReactHeight:I

    .line 28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p0}, Landroid/view/ViewGroup;->forceLayout()V

    .line 31
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 34
    :cond_0
    iget p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;->mReactWidth:I

    iget p2, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;->mReactHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setType(Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;->mType:Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;

    return-void
.end method
