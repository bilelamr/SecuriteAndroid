.class Lcom/horcrux/svg/RenderableViewManager$TextViewManager;
.super Lcom/horcrux/svg/RenderableViewManager$GroupViewManager;
.source "RenderableViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/horcrux/svg/RenderableViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextViewManager"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 388
    sget-object v0, Lcom/horcrux/svg/RenderableViewManager$SVGClass;->RNSVGText:Lcom/horcrux/svg/RenderableViewManager$SVGClass;

    invoke-direct {p0, v0}, Lcom/horcrux/svg/RenderableViewManager$GroupViewManager;-><init>(Lcom/horcrux/svg/RenderableViewManager$SVGClass;)V

    return-void
.end method

.method constructor <init>(Lcom/horcrux/svg/RenderableViewManager$SVGClass;)V
    .locals 0

    .line 392
    invoke-direct {p0, p1}, Lcom/horcrux/svg/RenderableViewManager$GroupViewManager;-><init>(Lcom/horcrux/svg/RenderableViewManager$SVGClass;)V

    return-void
.end method


# virtual methods
.method public setBaselineShift(Lcom/horcrux/svg/TextView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "baselineShift"
    .end annotation

    .line 412
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/TextView;->setBaselineShift(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setDeltaX(Lcom/horcrux/svg/TextView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "dx"
    .end annotation

    .line 427
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/TextView;->setDeltaX(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setDeltaY(Lcom/horcrux/svg/TextView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "dy"
    .end annotation

    .line 432
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/TextView;->setDeltaY(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setFont(Lcom/horcrux/svg/TextView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "font"
    .end annotation

    .line 447
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/GroupView;->setFont(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public setLengthAdjust(Lcom/horcrux/svg/TextView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "lengthAdjust"
    .end annotation

    .line 402
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/TextView;->setLengthAdjust(Ljava/lang/String;)V

    return-void
.end method

.method public setMethod(Lcom/horcrux/svg/TextView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "alignmentBaseline"
    .end annotation

    .line 407
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/TextView;->setMethod(Ljava/lang/String;)V

    return-void
.end method

.method public setRotate(Lcom/horcrux/svg/TextView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "rotate"
    .end annotation

    .line 422
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/TextView;->setRotate(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setTextLength(Lcom/horcrux/svg/TextView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "textLength"
    .end annotation

    .line 397
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/TextView;->setTextLength(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setVerticalAlign(Lcom/horcrux/svg/TextView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "verticalAlign"
    .end annotation

    .line 417
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/TextView;->setVerticalAlign(Ljava/lang/String;)V

    return-void
.end method

.method public setX(Lcom/horcrux/svg/TextView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "x"
    .end annotation

    .line 437
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/TextView;->setPositionX(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setY(Lcom/horcrux/svg/TextView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "y"
    .end annotation

    .line 442
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/TextView;->setPositionY(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method
