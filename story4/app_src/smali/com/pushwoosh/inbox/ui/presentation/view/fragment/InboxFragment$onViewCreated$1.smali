.class final Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$onViewCreated$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InboxFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/pushwoosh/inbox/data/InboxMessage;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;


# direct methods
.method constructor <init>(Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$onViewCreated$1;->this$0:Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p1, Lcom/pushwoosh/inbox/data/InboxMessage;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$onViewCreated$1;->invoke(Lcom/pushwoosh/inbox/data/InboxMessage;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/pushwoosh/inbox/data/InboxMessage;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$onViewCreated$1;->this$0:Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;

    invoke-static {v0}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->access$getInboxAdapter$p(Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;)Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$onViewCreated$1;->this$0:Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->showEmptyView()V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$onViewCreated$1;->this$0:Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;

    sget v1, Lcom/pushwoosh/inbox/ui/R$id;->inboxSwipeRefreshLayout:I

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const-string v1, "inboxSwipeRefreshLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 83
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$onViewCreated$1;->this$0:Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;

    invoke-static {v0}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->access$getInboxPresenter$p(Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;)Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->removeItem(Lcom/pushwoosh/inbox/data/InboxMessage;)V

    return-void
.end method
