.class public abstract Lcom/pushwoosh/internal/event/Emitter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/pushwoosh/internal/event/Event;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected listener:Lcom/pushwoosh/internal/event/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/internal/event/EventListener<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forEvent(Ljava/lang/Class;)Lcom/pushwoosh/internal/event/Emitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/pushwoosh/internal/event/Event;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/pushwoosh/internal/event/Emitter<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/pushwoosh/internal/event/Emitter$2;

    invoke-direct {v0, p0}, Lcom/pushwoosh/internal/event/Emitter$2;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static when(Lcom/pushwoosh/internal/event/Emitter;Lcom/pushwoosh/internal/event/Emitter;)Lcom/pushwoosh/internal/event/Emitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/pushwoosh/internal/event/Event;",
            ">(",
            "Lcom/pushwoosh/internal/event/Emitter<",
            "TT;>;",
            "Lcom/pushwoosh/internal/event/Emitter<",
            "*>;)",
            "Lcom/pushwoosh/internal/event/Emitter<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/pushwoosh/internal/event/Emitter$1;

    invoke-direct {v0, p0, p1}, Lcom/pushwoosh/internal/event/Emitter$1;-><init>(Lcom/pushwoosh/internal/event/Emitter;Lcom/pushwoosh/internal/event/Emitter;)V

    return-object v0
.end method


# virtual methods
.method public bind(Lcom/pushwoosh/internal/event/EventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/internal/event/EventListener<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pushwoosh/internal/event/Emitter;->listener:Lcom/pushwoosh/internal/event/EventListener;

    return-void
.end method

.method protected emit(Lcom/pushwoosh/internal/event/Event;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/internal/event/Emitter;->listener:Lcom/pushwoosh/internal/event/EventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pushwoosh/internal/event/EventListener;->onReceive(Lcom/pushwoosh/internal/event/Event;)V

    :cond_0
    return-void
.end method

.method public unbind()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pushwoosh/internal/event/Emitter;->listener:Lcom/pushwoosh/internal/event/EventListener;

    return-void
.end method
