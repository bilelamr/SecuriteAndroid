.class final Lcom/pushwoosh/internal/event/Emitter$1;
.super Lcom/pushwoosh/internal/event/Emitter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pushwoosh/internal/event/Emitter;->when(Lcom/pushwoosh/internal/event/Emitter;Lcom/pushwoosh/internal/event/Emitter;)Lcom/pushwoosh/internal/event/Emitter;
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
.field a:Z

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/pushwoosh/internal/event/Emitter;

.field final synthetic d:Lcom/pushwoosh/internal/event/Emitter;


# direct methods
.method constructor <init>(Lcom/pushwoosh/internal/event/Emitter;Lcom/pushwoosh/internal/event/Emitter;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/internal/event/Emitter$1;->c:Lcom/pushwoosh/internal/event/Emitter;

    iput-object p2, p0, Lcom/pushwoosh/internal/event/Emitter$1;->d:Lcom/pushwoosh/internal/event/Emitter;

    invoke-direct {p0}, Lcom/pushwoosh/internal/event/Emitter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/pushwoosh/internal/event/Emitter$1;->a:Z

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/internal/event/Emitter$1;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/internal/event/Emitter$1;Lcom/pushwoosh/internal/event/Event;)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/pushwoosh/internal/event/Emitter$1;->a:Z

    iget-object p1, p0, Lcom/pushwoosh/internal/event/Emitter$1;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pushwoosh/internal/event/Event;

    invoke-virtual {p0, v0}, Lcom/pushwoosh/internal/event/Emitter;->emit(Lcom/pushwoosh/internal/event/Event;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/pushwoosh/internal/event/Emitter$1;Lcom/pushwoosh/internal/event/Event;)V
    .locals 1

    iget-boolean v0, p0, Lcom/pushwoosh/internal/event/Emitter$1;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/pushwoosh/internal/event/Emitter;->emit(Lcom/pushwoosh/internal/event/Event;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/pushwoosh/internal/event/Emitter$1;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
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

    iget-object p1, p0, Lcom/pushwoosh/internal/event/Emitter$1;->c:Lcom/pushwoosh/internal/event/Emitter;

    invoke-static {p0}, Lcom/pushwoosh/internal/event/a;->a(Lcom/pushwoosh/internal/event/Emitter$1;)Lcom/pushwoosh/internal/event/EventListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/pushwoosh/internal/event/Emitter;->bind(Lcom/pushwoosh/internal/event/EventListener;)V

    iget-object p1, p0, Lcom/pushwoosh/internal/event/Emitter$1;->d:Lcom/pushwoosh/internal/event/Emitter;

    invoke-static {p0}, Lcom/pushwoosh/internal/event/b;->a(Lcom/pushwoosh/internal/event/Emitter$1;)Lcom/pushwoosh/internal/event/EventListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/pushwoosh/internal/event/Emitter;->bind(Lcom/pushwoosh/internal/event/EventListener;)V

    return-void
.end method
