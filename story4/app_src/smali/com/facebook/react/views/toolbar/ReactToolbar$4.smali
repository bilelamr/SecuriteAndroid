.class Lcom/facebook/react/views/toolbar/ReactToolbar$4;
.super Ljava/lang/Object;
.source "ReactToolbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/toolbar/ReactToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/toolbar/ReactToolbar;


# direct methods
.method constructor <init>(Lcom/facebook/react/views/toolbar/ReactToolbar;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/facebook/react/views/toolbar/ReactToolbar$4;->this$0:Lcom/facebook/react/views/toolbar/ReactToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 167
    iget-object v0, p0, Lcom/facebook/react/views/toolbar/ReactToolbar$4;->this$0:Lcom/facebook/react/views/toolbar/ReactToolbar;

    .line 168
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v3, p0, Lcom/facebook/react/views/toolbar/ReactToolbar$4;->this$0:Lcom/facebook/react/views/toolbar/ReactToolbar;

    .line 169
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 167
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->measure(II)V

    .line 170
    iget-object v0, p0, Lcom/facebook/react/views/toolbar/ReactToolbar$4;->this$0:Lcom/facebook/react/views/toolbar/ReactToolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/react/views/toolbar/ReactToolbar$4;->this$0:Lcom/facebook/react/views/toolbar/ReactToolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/facebook/react/views/toolbar/ReactToolbar$4;->this$0:Lcom/facebook/react/views/toolbar/ReactToolbar;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/facebook/react/views/toolbar/ReactToolbar$4;->this$0:Lcom/facebook/react/views/toolbar/ReactToolbar;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method
