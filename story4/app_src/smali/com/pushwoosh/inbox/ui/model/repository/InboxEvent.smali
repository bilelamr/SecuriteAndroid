.class public abstract Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;
.super Ljava/lang/Object;
.source "InboxRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$OnCreate;,
        Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$Loading;,
        Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$FinishLoading;,
        Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$FailedLoading;,
        Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$SuccessLoadingCache;,
        Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$SuccessLoading;,
        Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$InboxEmpty;,
        Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$InboxMessagesUpdated;,
        Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$RestoreState;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;-><init>()V

    return-void
.end method
