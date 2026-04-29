.class Lcom/horcrux/svg/RenderableViewManager$SymbolManager;
.super Lcom/horcrux/svg/RenderableViewManager$GroupViewManager;
.source "RenderableViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/horcrux/svg/RenderableViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SymbolManager"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 694
    sget-object v0, Lcom/horcrux/svg/RenderableViewManager$SVGClass;->RNSVGSymbol:Lcom/horcrux/svg/RenderableViewManager$SVGClass;

    invoke-direct {p0, v0}, Lcom/horcrux/svg/RenderableViewManager$GroupViewManager;-><init>(Lcom/horcrux/svg/RenderableViewManager$SVGClass;)V

    return-void
.end method


# virtual methods
.method public setAlign(Lcom/horcrux/svg/SymbolView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "align"
    .end annotation

    .line 719
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/SymbolView;->setAlign(Ljava/lang/String;)V

    return-void
.end method

.method public setMeetOrSlice(Lcom/horcrux/svg/SymbolView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "meetOrSlice"
    .end annotation

    .line 724
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/SymbolView;->setMeetOrSlice(I)V

    return-void
.end method

.method public setMinX(Lcom/horcrux/svg/SymbolView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "minX"
    .end annotation

    .line 699
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/SymbolView;->setMinX(F)V

    return-void
.end method

.method public setMinY(Lcom/horcrux/svg/SymbolView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "minY"
    .end annotation

    .line 704
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/SymbolView;->setMinY(F)V

    return-void
.end method

.method public setVbHeight(Lcom/horcrux/svg/SymbolView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "vbHeight"
    .end annotation

    .line 714
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/SymbolView;->setVbHeight(F)V

    return-void
.end method

.method public setVbWidth(Lcom/horcrux/svg/SymbolView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "vbWidth"
    .end annotation

    .line 709
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/SymbolView;->setVbWidth(F)V

    return-void
.end method
