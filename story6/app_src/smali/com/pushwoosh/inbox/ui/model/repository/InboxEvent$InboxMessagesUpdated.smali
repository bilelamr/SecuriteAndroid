.class public final Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$InboxMessagesUpdated;
.super Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;
.source "InboxRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InboxMessagesUpdated"
.end annotation


# instance fields
.field private final addedInboxMessages:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final deleted:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final updatedInboxMessages:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;)V"
        }
    .end annotation

    const-string v0, "addedInboxMessages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatedInboxMessages"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deleted"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, v0}, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$InboxMessagesUpdated;->addedInboxMessages:Ljava/util/Collection;

    iput-object p2, p0, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$InboxMessagesUpdated;->updatedInboxMessages:Ljava/util/Collection;

    iput-object p3, p0, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$InboxMessagesUpdated;->deleted:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final getAddedInboxMessages()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$InboxMessagesUpdated;->addedInboxMessages:Ljava/util/Collection;

    return-object v0
.end method

.method public final getDeleted()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$InboxMessagesUpdated;->deleted:Ljava/util/Collection;

    return-object v0
.end method

.method public final getUpdatedInboxMessages()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$InboxMessagesUpdated;->updatedInboxMessages:Ljava/util/Collection;

    return-object v0
.end method
