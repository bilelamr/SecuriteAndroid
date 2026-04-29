.class final Lcom/pushwoosh/internal/event/Emitter$2;
.super Lcom/pushwoosh/internal/event/Emitter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pushwoosh/internal/event/Emitter;->forEvent(Ljava/lang/Class;)Lcom/pushwoosh/internal/event/Emitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pushwoosh/internal/event/Emitter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/internal/event/Emitter$2;->a:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/pushwoosh/internal/event/Emitter;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lcom/pushwoosh/internal/event/EventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/internal/event/EventListener<",
            "TT;>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/pushwoosh/internal/event/Emitter;->bind(Lcom/pushwoosh/internal/event/EventListener;)V

    iget-object v0, p0, Lcom/pushwoosh/internal/event/Emitter$2;->a:Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/pushwoosh/internal/event/EventBus;->subscribe(Ljava/lang/Class;Lcom/pushwoosh/internal/event/EventListener;)Lcom/pushwoosh/internal/event/Subscription;

    return-void
.end method

.method public unbind()V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/internal/event/Emitter$2;->a:Ljava/lang/Class;

    iget-object v1, p0, Lcom/pushwoosh/internal/event/Emitter;->listener:Lcom/pushwoosh/internal/event/EventListener;

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/event/EventBus;->unsubscribe(Ljava/lang/Class;Lcom/pushwoosh/internal/event/EventListener;)V

    invoke-super {p0}, Lcom/pushwoosh/internal/event/Emitter;->unbind()V

    return-void
.end method
