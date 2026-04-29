.class final Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository$subscribeToEvent$1;
.super Ljava/lang/Object;
.source "InboxRepository.kt"

# interfaces
.implements Lcom/pushwoosh/internal/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->subscribeToEvent()Lcom/pushwoosh/internal/event/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/pushwoosh/internal/event/Event;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/pushwoosh/internal/event/EventListener<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInboxRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InboxRepository.kt\ncom/pushwoosh/inbox/ui/model/repository/InboxRepository$subscribeToEvent$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,159:1\n616#2:160\n689#2,2:161\n616#2:163\n689#2,2:164\n*E\n*S KotlinDebug\n*F\n+ 1 InboxRepository.kt\ncom/pushwoosh/inbox/ui/model/repository/InboxRepository$subscribeToEvent$1\n*L\n57#1:160\n57#1,2:161\n58#1:163\n58#1,2:164\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository$subscribeToEvent$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository$subscribeToEvent$1;

    invoke-direct {v0}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository$subscribeToEvent$1;-><init>()V

    sput-object v0, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository$subscribeToEvent$1;->INSTANCE:Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository$subscribeToEvent$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;)V
    .locals 9

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "event"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;->getMessagesAdded()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "event.messagesAdded"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/pushwoosh/inbox/data/InboxMessage;

    .line 57
    sget-object v6, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->INSTANCE:Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;

    invoke-static {v6}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->access$getCurrentInboxMessages$p(Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v4, v5

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    invoke-virtual {p1}, Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;->getMessagesUpdated()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "event.messagesUpdated"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/pushwoosh/inbox/data/InboxMessage;

    .line 59
    sget-object v6, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->INSTANCE:Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;

    invoke-static {v6}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->access$getCurrentInboxMessages$p(Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "it"

    if-eqz v6, :cond_3

    .line 60
    sget-object v6, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->INSTANCE:Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;

    invoke-static {v6}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->access$getCurrentInboxMessages$p(Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;)Ljava/util/List;

    move-result-object v6

    sget-object v8, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->INSTANCE:Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;

    invoke-static {v8}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->access$getCurrentInboxMessages$p(Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v8, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    goto :goto_2

    .line 63
    :cond_3
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_2

    .line 65
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    :cond_4
    sget-object v1, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->INSTANCE:Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;

    invoke-static {v1}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->access$getCurrentInboxMessages$p(Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 70
    sget-object v1, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->INSTANCE:Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;

    invoke-static {v1}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->access$getCurrentInboxMessages$p(Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    .line 74
    :cond_5
    sget-object v1, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->INSTANCE:Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;

    invoke-static {v1}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->access$getCurrentInboxMessages$p(Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository$subscribeToEvent$1$deleted$1;

    invoke-direct {v3, p1}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository$subscribeToEvent$1$deleted$1;-><init>(Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;)V

    invoke-static {v1, v3}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepositoryKt;->remove(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object p1

    .line 78
    sget-object v1, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->INSTANCE:Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;

    invoke-static {v1}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->access$getCurrentInboxMessages$p(Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance p1, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$InboxEmpty;

    invoke-direct {p1}, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$InboxEmpty;-><init>()V

    goto :goto_3

    :cond_6
    new-instance v3, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$InboxMessagesUpdated;

    invoke-direct {v3, v0, v2, p1}, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$InboxMessagesUpdated;-><init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    move-object p1, v3

    :goto_3
    invoke-static {v1, p1}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->access$updateEvent(Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;)V

    return-void
.end method

.method public bridge synthetic onReceive(Lcom/pushwoosh/internal/event/Event;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository$subscribeToEvent$1;->onReceive(Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;)V

    return-void
.end method
