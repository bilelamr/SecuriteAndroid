.class abstract Lcom/facebook/react/uimanager/UIViewOperationQueue$ViewOperation;
.super Ljava/lang/Object;
.source "UIViewOperationQueue.java"

# interfaces
.implements Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/uimanager/UIViewOperationQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ViewOperation"
.end annotation


# instance fields
.field public mTag:I


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;I)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$ViewOperation;->mTag:I

    return-void
.end method
