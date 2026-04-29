.class public final Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$FailedLoading;
.super Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;
.source "InboxRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FailedLoading"
.end annotation


# instance fields
.field private final error:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, v0}, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$FailedLoading;->error:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final getError()Ljava/lang/Throwable;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/model/repository/InboxEvent$FailedLoading;->error:Ljava/lang/Throwable;

    return-object v0
.end method
