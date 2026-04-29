.class public Lcom/pushwoosh/internal/event/Subscription;
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
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/pushwoosh/internal/event/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/internal/event/EventListener<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/pushwoosh/internal/event/EventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/pushwoosh/internal/event/EventListener<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/internal/event/Subscription;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/pushwoosh/internal/event/Subscription;->b:Lcom/pushwoosh/internal/event/EventListener;

    return-void
.end method


# virtual methods
.method public unsubscribe()V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/internal/event/Subscription;->a:Ljava/lang/Class;

    iget-object v1, p0, Lcom/pushwoosh/internal/event/Subscription;->b:Lcom/pushwoosh/internal/event/EventListener;

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/event/EventBus;->unsubscribe(Ljava/lang/Class;Lcom/pushwoosh/internal/event/EventListener;)V

    return-void
.end method
