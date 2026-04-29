.class public Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;
.super Ljava/lang/Object;
.source "PreAllocateViewMountItem.java"

# interfaces
.implements Lcom/facebook/react/fabric/mounting/mountitems/MountItem;


# instance fields
.field private final mComponent:Ljava/lang/String;

.field private final mContext:Lcom/facebook/react/uimanager/ThemedReactContext;

.field private final mIsLayoutable:Z

.field private final mProps:Lcom/facebook/react/bridge/ReadableMap;

.field private final mReactTag:I

.field private final mRootTag:I


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/ThemedReactContext;IILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Z)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 36
    iput-object p4, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mComponent:Ljava/lang/String;

    .line 37
    iput p2, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mRootTag:I

    .line 38
    iput-object p5, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mProps:Lcom/facebook/react/bridge/ReadableMap;

    .line 39
    iput p3, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mReactTag:I

    .line 40
    iput-boolean p6, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mIsLayoutable:Z

    return-void
.end method


# virtual methods
.method public execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V
    .locals 8

    .line 45
    sget-boolean v0, Lcom/facebook/react/fabric/FabricUIManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/facebook/react/fabric/FabricUIManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing pre-allocation of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    iget-object v3, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    iget-object v4, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mComponent:Ljava/lang/String;

    iget v5, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mReactTag:I

    iget-object v6, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mProps:Lcom/facebook/react/bridge/ReadableMap;

    iget-boolean v7, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mIsLayoutable:Z

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/react/fabric/mounting/MountingManager;->preallocateView(Lcom/facebook/react/uimanager/ThemedReactContext;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;Z)V

    const/4 p1, 0x0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreAllocateViewMountItem ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mReactTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] - component: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mComponent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rootTag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mRootTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isLayoutable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mIsLayoutable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " props: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mProps:Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
