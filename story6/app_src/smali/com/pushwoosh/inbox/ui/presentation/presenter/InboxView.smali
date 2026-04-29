.class public interface abstract Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxView;
.super Ljava/lang/Object;
.source "InboxPresenter.kt"

# interfaces
.implements Lcom/pushwoosh/inbox/ui/presentation/lifecycle/Lifecycle;


# virtual methods
.method public abstract failedLoadingInboxList(Lcom/pushwoosh/inbox/ui/presentation/data/UserError;)V
.end method

.method public abstract hideProgress()V
.end method

.method public abstract showEmptyView()V
.end method

.method public abstract showList(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showSwipeRefreshProgress()V
.end method

.method public abstract showTotalProgress()V
.end method
