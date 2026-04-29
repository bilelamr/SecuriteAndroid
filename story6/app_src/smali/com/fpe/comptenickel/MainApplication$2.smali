.class Lcom/fpe/comptenickel/MainApplication$2;
.super Ljava/lang/Object;
.source "MainApplication.java"

# interfaces
.implements Lcom/pushwoosh/internal/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fpe/comptenickel/MainApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pushwoosh/internal/event/EventListener<",
        "Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fpe/comptenickel/MainApplication;


# direct methods
.method constructor <init>(Lcom/fpe/comptenickel/MainApplication;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/fpe/comptenickel/MainApplication$2;->this$0:Lcom/fpe/comptenickel/MainApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/fpe/comptenickel/MainApplication$2;->this$0:Lcom/fpe/comptenickel/MainApplication;

    invoke-static {p1}, Lcom/fpe/comptenickel/MainApplication;->access$000(Lcom/fpe/comptenickel/MainApplication;)V

    return-void
.end method

.method public bridge synthetic onReceive(Lcom/pushwoosh/internal/event/Event;)V
    .locals 0

    .line 64
    check-cast p1, Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;

    invoke-virtual {p0, p1}, Lcom/fpe/comptenickel/MainApplication$2;->onReceive(Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;)V

    return-void
.end method
