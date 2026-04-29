.class public final Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;
.super Lcom/pushwoosh/inbox/ui/presentation/presenter/BasePresenter;
.source "InboxPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInboxPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InboxPresenter.kt\ncom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,187:1\n1483#2,2:188\n*E\n*S KotlinDebug\n*F\n+ 1 InboxPresenter.kt\ncom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter\n*L\n120#1,2:188\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter$Companion;

.field private static final KEY_SWIPE_REFRESH:Ljava/lang/String; = "KEY_SWIPE_REFRESH"


# instance fields
.field private inboxEvent:Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;

.field private final inboxViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxView;",
            ">;"
        }
    .end annotation
.end field

.field private final messageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;"
        }
    .end annotation
.end field

.field private subscription:Lcom/pushwoosh/internal/event/Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/internal/event/Subscription<",
            "Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private swipeToRefresh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->Companion:Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxView;)V
    .locals 1

    const-string v0, "inboxView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lcom/pushwoosh/inbox/ui/presentation/presenter/BasePresenter;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->inboxViewRef:Ljava/lang/ref/WeakReference;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->messageList:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$getInboxEvent$p(Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;)Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->inboxEvent:Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;

    return-object p0
.end method

.method public static final synthetic access$implementState(Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->implementState()V

    return-void
.end method

.method public static final synthetic access$setInboxEvent$p(Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->inboxEvent:Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;

    return-void
.end method

.method private final getCallback()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter$callback$1;

    invoke-direct {v0, p0}, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter$callback$1;-><init>(Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;)V

    return-object v0
.end method

.method private final implementState()V
    .locals 5

    .line 86
    invoke-virtual {p0}, Lcom/pushwoosh/inbox/ui/presentation/presenter/BasePresenter;->getViewEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->inboxEvent:Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;

    .line 92
    instance-of v1, v0, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$OnCreate;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->loadInboxMessages()V

    goto/16 :goto_1

    .line 93
    :cond_1
    instance-of v1, v0, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$Loading;

    if-eqz v1, :cond_3

    iget-boolean v0, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->swipeToRefresh:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->inboxViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxView;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxView;->showTotalProgress()V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->inboxViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxView;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxView;->showSwipeRefreshProgress()V

    goto/16 :goto_1

    .line 94
    :cond_3
    instance-of v1, v0, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$FinishLoading;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->inboxViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxView;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxView;->hideProgress()V

    goto/16 :goto_1

    .line 95
    :cond_4
    instance-of v1, v0, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$FailedLoading;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    .line 96
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->inboxViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxView;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/pushwoosh/inbox/ui/presentation/data/UserError;

    sget-object v4, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;

    invoke-virtual {v4}, Lcom/pushwoosh/inbox/ui/PushwooshInboxStyle;->getListErrorMessage()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2, v3}, Lcom/pushwoosh/inbox/ui/presentation/data/UserError;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxView;->failedLoadingInboxList(Lcom/pushwoosh/inbox/ui/presentation/data/UserError;)V

    :cond_5
    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->swipeToRefresh:Z

    goto/16 :goto_1

    .line 99
    :cond_6
    instance-of v1, v0, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$SuccessLoadingCache;

    if-eqz v1, :cond_7

    .line 100
    iget-object v1, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->messageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 101
    iget-object v1, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->messageList:Ljava/util/ArrayList;

    check-cast v0, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$SuccessLoadingCache;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$SuccessLoadingCache;->getInboxMessages()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 102
    invoke-direct {p0}, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->showList()V

    .line 103
    sget-object v0, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->INSTANCE:Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;

    invoke-virtual {p0}, Lcom/pushwoosh/inbox/ui/presentation/presenter/BasePresenter;->getRestore()Z

    move-result v1

    xor-int/2addr v1, v2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->loadInbox(ZLcom/pushwoosh/inbox/data/InboxMessage;I)V

    goto/16 :goto_1

    .line 105
    :cond_7
    instance-of v1, v0, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$SuccessLoading;

    if-eqz v1, :cond_8

    .line 106
    iget-object v1, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->messageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 107
    iget-object v1, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->messageList:Ljava/util/ArrayList;

    check-cast v0, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$SuccessLoading;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$SuccessLoading;->getInboxMessages()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 109
    invoke-direct {p0}, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->showList()V

    goto :goto_1

    .line 111
    :cond_8
    instance-of v1, v0, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$InboxEmpty;

    if-eqz v1, :cond_9

    .line 112
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->messageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 113
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->inboxViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxView;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxView;->showEmptyView()V

    goto :goto_1

    .line 115
    :cond_9
    instance-of v1, v0, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$InboxMessagesUpdated;

    if-eqz v1, :cond_c

    .line 116
    iget-object v1, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->messageList:Ljava/util/ArrayList;

    check-cast v0, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$InboxMessagesUpdated;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$InboxMessagesUpdated;->getDeleted()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 117
    iget-object v1, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->messageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$InboxMessagesUpdated;->getAddedInboxMessages()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 119
    invoke-virtual {v0}, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$InboxMessagesUpdated;->getUpdatedInboxMessages()Ljava/util/Collection;

    move-result-object v0

    .line 188
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pushwoosh/inbox/data/InboxMessage;

    .line 121
    iget-object v2, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->messageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 122
    iget-object v2, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->messageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 124
    :cond_a
    iget-object v2, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->messageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_b
    invoke-direct {p0}, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->showList()V

    :cond_c
    :goto_1
    return-void
.end method

.method private final loadInboxMessages()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->messageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 135
    sget-object v0, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->INSTANCE:Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;

    const/4 v1, 0x0

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->loadCachedInbox(Lcom/pushwoosh/inbox/data/InboxMessage;I)Ljava/util/Collection;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->messageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->showList()V

    .line 141
    sget-object v0, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->INSTANCE:Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->loadCachedInboxAsync(Lcom/pushwoosh/inbox/data/InboxMessage;I)V

    return-void
.end method

.method private final showList()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->messageList:Ljava/util/ArrayList;

    sget-object v1, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter$showList$1;->INSTANCE:Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter$showList$1;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 149
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->inboxViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->messageList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxView;->showList(Ljava/util/Collection;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/pushwoosh/inbox/ui/presentation/presenter/BasePresenter;->onCreate(Landroid/os/Bundle;)V

    .line 65
    sget-object p1, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->INSTANCE:Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;

    invoke-virtual {p1}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->subscribeToEvent()Lcom/pushwoosh/internal/event/Subscription;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->subscription:Lcom/pushwoosh/internal/event/Subscription;

    .line 67
    sget-object p1, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->INSTANCE:Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;

    invoke-direct {p0}, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->getCallback()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->addCallback(Lkotlin/jvm/functions/Function1;)V

    .line 68
    new-instance p1, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$OnCreate;

    invoke-direct {p1}, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$OnCreate;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->inboxEvent:Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;

    return-void
.end method

.method public onDestroy(Z)V
    .locals 1

    .line 157
    iget-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->subscription:Lcom/pushwoosh/internal/event/Subscription;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/pushwoosh/internal/event/Subscription;->unsubscribe()V

    .line 158
    :cond_0
    sget-object p1, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->INSTANCE:Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;

    invoke-direct {p0}, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->getCallback()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->removeCallback(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onItemClick(Lcom/pushwoosh/inbox/data/InboxMessage;)V
    .locals 1

    const-string v0, "inboxMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-interface {p1}, Lcom/pushwoosh/inbox/data/InboxMessage;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pushwoosh/inbox/PushwooshInbox;->performAction(Ljava/lang/String;)V

    .line 175
    sget-object v0, Lcom/pushwoosh/inbox/ui/PushwooshInboxUi;->INSTANCE:Lcom/pushwoosh/inbox/ui/PushwooshInboxUi;

    invoke-virtual {v0}, Lcom/pushwoosh/inbox/ui/PushwooshInboxUi;->getOnMessageClickListener()Lcom/pushwoosh/inbox/ui/OnInboxMessageClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pushwoosh/inbox/ui/OnInboxMessageClickListener;->onInboxMessageClick(Lcom/pushwoosh/inbox/data/InboxMessage;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-boolean v0, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->swipeToRefresh:Z

    const-string v1, "KEY_SWIPE_REFRESH"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated()V
    .locals 2

    .line 78
    invoke-super {p0}, Lcom/pushwoosh/inbox/ui/presentation/presenter/BasePresenter;->onViewCreated()V

    .line 79
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->messageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/pushwoosh/inbox/ui/presentation/presenter/BasePresenter;->getRestore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->inboxViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->messageList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxView;->showList(Ljava/util/Collection;)V

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->implementState()V

    return-void
.end method

.method public final refreshItems()V
    .locals 4

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->swipeToRefresh:Z

    .line 170
    sget-object v1, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->INSTANCE:Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->loadInbox(ZLcom/pushwoosh/inbox/data/InboxMessage;I)V

    return-void
.end method

.method public final removeItem(Lcom/pushwoosh/inbox/data/InboxMessage;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->messageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->INSTANCE:Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inbox/ui/model/repository/InboxRepository;->removeItem(Lcom/pushwoosh/inbox/data/InboxMessage;)V

    :cond_0
    return-void
.end method

.method protected restoreState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-boolean v0, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->swipeToRefresh:Z

    const-string v1, "KEY_SWIPE_REFRESH"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->swipeToRefresh:Z

    .line 73
    new-instance p1, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$RestoreState;

    invoke-direct {p1}, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$RestoreState;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->inboxEvent:Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;

    .line 74
    invoke-direct {p0}, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->implementState()V

    return-void
.end method
