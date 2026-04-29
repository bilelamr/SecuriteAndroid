.class public abstract Lcom/facebook/yoga/YogaNode;
.super Ljava/lang/Object;
.source "YogaNode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/facebook/yoga/YogaConfig;)Lcom/facebook/yoga/YogaNode;
    .locals 1

    .line 17
    sget-boolean v0, Lcom/facebook/yoga/YogaConfig;->useBatchingForLayoutOutputs:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/yoga/YogaNodeJNIBatching;

    invoke-direct {v0, p0}, Lcom/facebook/yoga/YogaNodeJNIBatching;-><init>(Lcom/facebook/yoga/YogaConfig;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/facebook/yoga/YogaNodeJNI;

    invoke-direct {v0, p0}, Lcom/facebook/yoga/YogaNodeJNI;-><init>(Lcom/facebook/yoga/YogaConfig;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract addChildAt(Lcom/facebook/yoga/YogaNode;I)V
.end method

.method public abstract calculateLayout(FF)V
.end method

.method public abstract dirty()V
.end method

.method public abstract getHeight()Lcom/facebook/yoga/YogaValue;
.end method

.method public abstract getLayoutDirection()Lcom/facebook/yoga/YogaDirection;
.end method

.method public abstract getLayoutHeight()F
.end method

.method public abstract getLayoutPadding(Lcom/facebook/yoga/YogaEdge;)F
.end method

.method public abstract getLayoutWidth()F
.end method

.method public abstract getLayoutX()F
.end method

.method public abstract getLayoutY()F
.end method

.method public abstract getWidth()Lcom/facebook/yoga/YogaValue;
.end method

.method public abstract hasNewLayout()Z
.end method

.method public abstract isDirty()Z
.end method

.method public abstract isMeasureDefined()Z
.end method

.method public abstract markLayoutSeen()V
.end method

.method public abstract removeChildAt(I)Lcom/facebook/yoga/YogaNode;
.end method

.method public abstract reset()V
.end method

.method public abstract setAlignContent(Lcom/facebook/yoga/YogaAlign;)V
.end method

.method public abstract setAlignItems(Lcom/facebook/yoga/YogaAlign;)V
.end method

.method public abstract setAlignSelf(Lcom/facebook/yoga/YogaAlign;)V
.end method

.method public abstract setAspectRatio(F)V
.end method

.method public abstract setBorder(Lcom/facebook/yoga/YogaEdge;F)V
.end method

.method public abstract setData(Ljava/lang/Object;)V
.end method

.method public abstract setDirection(Lcom/facebook/yoga/YogaDirection;)V
.end method

.method public abstract setDisplay(Lcom/facebook/yoga/YogaDisplay;)V
.end method

.method public abstract setFlex(F)V
.end method

.method public abstract setFlexBasis(F)V
.end method

.method public abstract setFlexBasisAuto()V
.end method

.method public abstract setFlexBasisPercent(F)V
.end method

.method public abstract setFlexDirection(Lcom/facebook/yoga/YogaFlexDirection;)V
.end method

.method public abstract setFlexGrow(F)V
.end method

.method public abstract setFlexShrink(F)V
.end method

.method public abstract setHeight(F)V
.end method

.method public abstract setHeightAuto()V
.end method

.method public abstract setHeightPercent(F)V
.end method

.method public abstract setJustifyContent(Lcom/facebook/yoga/YogaJustify;)V
.end method

.method public abstract setMargin(Lcom/facebook/yoga/YogaEdge;F)V
.end method

.method public abstract setMarginAuto(Lcom/facebook/yoga/YogaEdge;)V
.end method

.method public abstract setMarginPercent(Lcom/facebook/yoga/YogaEdge;F)V
.end method

.method public abstract setMaxHeight(F)V
.end method

.method public abstract setMaxHeightPercent(F)V
.end method

.method public abstract setMaxWidth(F)V
.end method

.method public abstract setMaxWidthPercent(F)V
.end method

.method public abstract setMeasureFunction(Lcom/facebook/yoga/YogaMeasureFunction;)V
.end method

.method public abstract setMinHeight(F)V
.end method

.method public abstract setMinHeightPercent(F)V
.end method

.method public abstract setMinWidth(F)V
.end method

.method public abstract setMinWidthPercent(F)V
.end method

.method public abstract setOverflow(Lcom/facebook/yoga/YogaOverflow;)V
.end method

.method public abstract setPadding(Lcom/facebook/yoga/YogaEdge;F)V
.end method

.method public abstract setPaddingPercent(Lcom/facebook/yoga/YogaEdge;F)V
.end method

.method public abstract setPosition(Lcom/facebook/yoga/YogaEdge;F)V
.end method

.method public abstract setPositionPercent(Lcom/facebook/yoga/YogaEdge;F)V
.end method

.method public abstract setPositionType(Lcom/facebook/yoga/YogaPositionType;)V
.end method

.method public abstract setWidth(F)V
.end method

.method public abstract setWidthAuto()V
.end method

.method public abstract setWidthPercent(F)V
.end method

.method public abstract setWrap(Lcom/facebook/yoga/YogaWrap;)V
.end method
