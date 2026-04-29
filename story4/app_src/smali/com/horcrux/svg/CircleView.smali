.class Lcom/horcrux/svg/CircleView;
.super Lcom/horcrux/svg/RenderableView;
.source "CircleView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private mCx:Lcom/horcrux/svg/SVGLength;

.field private mCy:Lcom/horcrux/svg/SVGLength;

.field private mR:Lcom/horcrux/svg/SVGLength;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/horcrux/svg/RenderableView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method


# virtual methods
.method getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
    .locals 6

    .line 52
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 54
    iget-object p2, p0, Lcom/horcrux/svg/CircleView;->mCx:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, p2}, Lcom/horcrux/svg/VirtualView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v0

    .line 55
    iget-object p2, p0, Lcom/horcrux/svg/CircleView;->mCy:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, p2}, Lcom/horcrux/svg/VirtualView;->relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v2

    .line 56
    iget-object p2, p0, Lcom/horcrux/svg/CircleView;->mR:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, p2}, Lcom/horcrux/svg/VirtualView;->relativeOnOther(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v4

    double-to-float p2, v0

    double-to-float v0, v2

    double-to-float v1, v4

    .line 58
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-object p1
.end method

.method public setCx(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "cx"
    .end annotation

    .line 34
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/CircleView;->mCx:Lcom/horcrux/svg/SVGLength;

    .line 35
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method public setCy(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "cy"
    .end annotation

    .line 40
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/CircleView;->mCy:Lcom/horcrux/svg/SVGLength;

    .line 41
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method public setR(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "r"
    .end annotation

    .line 46
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/CircleView;->mR:Lcom/horcrux/svg/SVGLength;

    .line 47
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method
