.class Lcom/fpe/comptenickel/MainApplication$3;
.super Ljava/lang/Object;
.source "MainApplication.java"

# interfaces
.implements Lcom/pushwoosh/function/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fpe/comptenickel/MainApplication;->updateUnreadInboxMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pushwoosh/function/Callback<",
        "Ljava/lang/Integer;",
        "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/fpe/comptenickel/MainApplication;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/pushwoosh/function/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/function/Result<",
            "Ljava/lang/Integer;",
            "Lcom/pushwoosh/inbox/exception/InboxMessagesException;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/pushwoosh/function/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/pushwoosh/badge/PushwooshBadge;->setBadgeNumber(I)V

    :cond_0
    return-void
.end method
