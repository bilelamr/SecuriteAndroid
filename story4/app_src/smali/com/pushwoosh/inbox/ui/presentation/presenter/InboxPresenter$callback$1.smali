.class final Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter$callback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InboxPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->getCallback()Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;


# direct methods
.method constructor <init>(Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter$callback$1;->this$0:Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter$callback$1;->invoke(Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;)V
    .locals 1

    const-string v0, "inboxEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter$callback$1;->this$0:Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;

    invoke-static {v0, p1}, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->access$setInboxEvent$p(Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;)V

    .line 59
    iget-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter$callback$1;->this$0:Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;

    invoke-static {p1}, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->access$implementState(Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;)V

    return-void
.end method
