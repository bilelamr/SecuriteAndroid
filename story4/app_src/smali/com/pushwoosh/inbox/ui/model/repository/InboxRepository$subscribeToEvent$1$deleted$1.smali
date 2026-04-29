.class final Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository$subscribeToEvent$1$deleted$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InboxRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository$subscribeToEvent$1;->onReceive(Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $event:Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;


# direct methods
.method constructor <init>(Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository$subscribeToEvent$1$deleted$1;->$event:Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, Lcom/pushwoosh/inbox/data/InboxMessage;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository$subscribeToEvent$1$deleted$1;->invoke(Lcom/pushwoosh/inbox/data/InboxMessage;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lcom/pushwoosh/inbox/data/InboxMessage;)Z
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository$subscribeToEvent$1$deleted$1;->$event:Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;

    const-string v1, "event"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;->getMessagesDeleted()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p1}, Lcom/pushwoosh/inbox/data/InboxMessage;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
