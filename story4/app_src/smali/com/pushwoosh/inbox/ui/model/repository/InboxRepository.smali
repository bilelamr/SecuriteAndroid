.class public final Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;
.super Ljava/lang/Object;
.source "InboxRepository.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInboxRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InboxRepository.kt\ncom/pushwoosh/inbox/ui/model/repository/InboxRepository\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,159:1\n1483#2,2:160\n*E\n*S KotlinDebug\n*F\n+ 1 InboxRepository.kt\ncom/pushwoosh/inbox/ui/model/repository/InboxRepository\n*L\n126#1,2:160\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;

.field private static final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private static currentInboxEvent:Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;

.field private static final currentInboxMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;

    invoke-direct {v0}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;-><init>()V

    sput-object v0, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->INSTANCE:Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->callbacks:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->currentInboxMessages:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCurrentInboxMessages$p(Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;)Ljava/util/List;
    .locals 0

    .line 38
    sget-object p0, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->currentInboxMessages:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$updateEvent(Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->updateEvent(Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;)V

    return-void
.end method

.method private final getLoadMessagesCallback(Z)Lcom/pushwoosh/function/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/pushwoosh/function/Callback<",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;",
            "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository$getLoadMessagesCallback$1;

    invoke-direct {v0, p1}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository$getLoadMessagesCallback$1;-><init>(Z)V

    return-object v0
.end method

.method private final updateEvent(Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;)V
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InboxEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateEvent"

    invoke-static {v1, v0}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sput-object p1, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->currentInboxEvent:Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;

    .line 126
    sget-object v0, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->callbacks:Ljava/util/List;

    .line 160
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 126
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final addCallback(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->currentInboxEvent:Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final loadCachedInbox(Lcom/pushwoosh/inbox/data/InboxMessage;I)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            "I)",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;"
        }
    .end annotation

    .line 88
    invoke-static {p1, p2}, Lcom/pushwoosh/inbox/PushwooshInbox;->loadCachedMessages(Lcom/pushwoosh/inbox/data/InboxMessage;I)Ljava/util/Collection;

    move-result-object p1

    const-string p2, "PushwooshInbox.loadCache\u2026ages(inboxMessage, limit)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final loadCachedInboxAsync(Lcom/pushwoosh/inbox/data/InboxMessage;I)V
    .locals 1

    const/4 v0, 0x1

    .line 92
    invoke-direct {p0, v0}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->getLoadMessagesCallback(Z)Lcom/pushwoosh/function/Callback;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/pushwoosh/inbox/PushwooshInbox;->loadCachedMessages(Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/inbox/data/InboxMessage;I)V

    return-void
.end method

.method public final loadInbox(ZLcom/pushwoosh/inbox/data/InboxMessage;I)V
    .locals 0

    .line 83
    new-instance p1, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$Loading;

    invoke-direct {p1}, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$Loading;-><init>()V

    invoke-direct {p0, p1}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->updateEvent(Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;)V

    const/4 p1, 0x0

    .line 84
    invoke-direct {p0, p1}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->getLoadMessagesCallback(Z)Lcom/pushwoosh/function/Callback;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/pushwoosh/inbox/PushwooshInbox;->loadMessages(Lcom/pushwoosh/function/Callback;Lcom/pushwoosh/inbox/data/InboxMessage;I)V

    return-void
.end method

.method public final removeCallback(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeItem(Lcom/pushwoosh/inbox/data/InboxMessage;)V
    .locals 1

    const-string v0, "inboxMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-interface {p1}, Lcom/pushwoosh/inbox/data/InboxMessage;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/pushwoosh/inbox/PushwooshInbox;->deleteMessage(Ljava/lang/String;)V

    return-void
.end method

.method public final subscribeToEvent()Lcom/pushwoosh/internal/event/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pushwoosh/internal/event/Subscription<",
            "Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;",
            ">;"
        }
    .end annotation

    .line 56
    const-class v0, Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;

    sget-object v1, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository$subscribeToEvent$1;->INSTANCE:Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository$subscribeToEvent$1;

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/event/EventBus;->subscribe(Ljava/lang/Class;Lcom/pushwoosh/internal/event/EventListener;)Lcom/pushwoosh/internal/event/Subscription;

    move-result-object v0

    const-string v1, "EventBus.subscribe(Inbox\u2026 deleted))\n            })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
