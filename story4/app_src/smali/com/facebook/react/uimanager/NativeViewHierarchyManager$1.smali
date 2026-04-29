.class Lcom/facebook/react/uimanager/NativeViewHierarchyManager$1;
.super Ljava/lang/Object;
.source "NativeViewHierarchyManager.java"

# interfaces
.implements Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->manageChildren(I[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

.field final synthetic val$indexToDelete:I

.field final synthetic val$pendingIndicesToDelete:Landroid/util/SparseIntArray;

.field final synthetic val$viewManager:Lcom/facebook/react/uimanager/ViewGroupManager;

.field final synthetic val$viewToDestroy:Landroid/view/View;

.field final synthetic val$viewToManage:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;Lcom/facebook/react/uimanager/ViewGroupManager;Landroid/view/ViewGroup;Landroid/view/View;Landroid/util/SparseIntArray;I)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$1;->this$0:Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    iput-object p2, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$1;->val$viewManager:Lcom/facebook/react/uimanager/ViewGroupManager;

    iput-object p3, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$1;->val$viewToManage:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$1;->val$viewToDestroy:Landroid/view/View;

    iput-object p5, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$1;->val$pendingIndicesToDelete:Landroid/util/SparseIntArray;

    iput p6, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$1;->val$indexToDelete:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 4

    .line 483
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$1;->val$viewManager:Lcom/facebook/react/uimanager/ViewGroupManager;

    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$1;->val$viewToManage:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$1;->val$viewToDestroy:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/uimanager/ViewGroupManager;->removeView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 484
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$1;->this$0:Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$1;->val$viewToDestroy:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->dropView(Landroid/view/View;)V

    .line 486
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$1;->val$pendingIndicesToDelete:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$1;->val$indexToDelete:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 487
    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$1;->val$pendingIndicesToDelete:Landroid/util/SparseIntArray;

    iget v3, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$1;->val$indexToDelete:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
