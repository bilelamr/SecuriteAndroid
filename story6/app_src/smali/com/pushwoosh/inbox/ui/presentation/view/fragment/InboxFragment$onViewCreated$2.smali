.class final Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$onViewCreated$2;
.super Lkotlin/jvm/internal/Lambda;
.source "InboxFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;


# direct methods
.method constructor <init>(Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$onViewCreated$2;->this$0:Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$onViewCreated$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment$onViewCreated$2;->this$0:Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;

    sget v1, Lcom/pushwoosh/inbox/ui/R$id;->inboxSwipeRefreshLayout:I

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inbox/ui/presentation/view/fragment/InboxFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const-string v1, "inboxSwipeRefreshLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    return-void
.end method
