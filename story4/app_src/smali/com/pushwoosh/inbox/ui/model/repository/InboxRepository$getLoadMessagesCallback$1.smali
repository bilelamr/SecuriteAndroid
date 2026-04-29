.class final Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository$getLoadMessagesCallback$1;
.super Ljava/lang/Object;
.source "InboxRepository.kt"

# interfaces
.implements Lcom/pushwoosh/function/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->getLoadMessagesCallback(Z)Lcom/pushwoosh/function/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Lcom/pushwoosh/exception/PushwooshException;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/pushwoosh/function/Callback<",
        "Ljava/util/Collection<",
        "+",
        "Lcom/pushwoosh/inbox/data/InboxMessage;",
        ">;",
        "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInboxRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InboxRepository.kt\ncom/pushwoosh/inbox/ui/model/repository/InboxRepository$getLoadMessagesCallback$1\n*L\n1#1,159:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $isLoadingCachedMessages:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository$getLoadMessagesCallback$1;->$isLoadingCachedMessages:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final process(Lcom/pushwoosh/function/Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Result<",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;",
            "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result isSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadInbox"

    invoke-static {v1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->INSTANCE:Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;

    new-instance v1, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$FinishLoading;

    invoke-direct {v1}, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$FinishLoading;-><init>()V

    invoke-static {v0, v1}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->access$updateEvent(Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;)V

    .line 99
    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 101
    sget-object v1, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->INSTANCE:Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;

    invoke-static {v1}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->access$getCurrentInboxMessages$p(Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 102
    sget-object v1, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->INSTANCE:Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;

    invoke-static {v1}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->access$getCurrentInboxMessages$p(Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v0, :cond_1

    .line 104
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 105
    iget-boolean v1, p0, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository$getLoadMessagesCallback$1;->$isLoadingCachedMessages:Z

    if-eqz v1, :cond_0

    .line 106
    sget-object v1, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->INSTANCE:Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;

    new-instance v2, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$SuccessLoadingCache;

    invoke-static {v1}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->access$getCurrentInboxMessages$p(Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$SuccessLoadingCache;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->access$updateEvent(Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;)V

    goto :goto_0

    .line 108
    :cond_0
    sget-object v1, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->INSTANCE:Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;

    new-instance v2, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$SuccessLoading;

    invoke-static {v1}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->access$getCurrentInboxMessages$p(Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$SuccessLoading;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->access$updateEvent(Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;)V

    .line 111
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getException()Lcom/pushwoosh/exception/PushwooshException;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/inbox/exception/InboxMessagesException;

    if-eqz p1, :cond_2

    .line 114
    sget-object v1, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->INSTANCE:Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;

    new-instance v2, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$FailedLoading;

    invoke-direct {v2, p1}, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$FailedLoading;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->access$updateEvent(Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;)V

    :cond_2
    if-nez p1, :cond_4

    if-eqz v0, :cond_3

    .line 117
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 118
    :cond_3
    sget-object p1, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->INSTANCE:Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;

    new-instance v0, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$InboxEmpty;

    invoke-direct {v0}, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$InboxEmpty;-><init>()V

    invoke-static {p1, v0}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->access$updateEvent(Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;)V

    :cond_4
    return-void
.end method
