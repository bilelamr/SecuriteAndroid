.class public final Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$SuccessLoadingCache;
.super Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;
.source "InboxRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuccessLoadingCache"
.end annotation


# instance fields
.field private final inboxMessages:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;)V"
        }
    .end annotation

    const-string v0, "inboxMessages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, v0}, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$SuccessLoadingCache;->inboxMessages:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final getInboxMessages()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$SuccessLoadingCache;->inboxMessages:Ljava/util/Collection;

    return-object v0
.end method
