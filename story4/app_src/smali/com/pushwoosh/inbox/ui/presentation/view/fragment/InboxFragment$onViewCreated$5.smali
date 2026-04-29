.class final Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$onViewCreated$5;
.super Ljava/lang/Object;
.source "InboxFragment.kt"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;


# direct methods
.method constructor <init>(Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$onViewCreated$5;->this$0:Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$onViewCreated$5;->this$0:Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;

    invoke-static {v0}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->access$getInboxPresenter$p(Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;)Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->refreshItems()V

    .line 111
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$onViewCreated$5;->this$0:Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;

    invoke-static {v0}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->access$getCallback$p(Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;)Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;->setTouchable(Z)V

    :cond_0
    return-void
.end method
