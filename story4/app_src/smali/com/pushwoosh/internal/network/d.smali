.class final synthetic Lcom/pushwoosh/internal/network/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/event/EventListener;


# instance fields
.field private final a:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/internal/network/d;->a:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static a(Ljava/util/concurrent/CountDownLatch;)Lcom/pushwoosh/internal/event/EventListener;
    .locals 1

    new-instance v0, Lcom/pushwoosh/internal/network/d;

    invoke-direct {v0, p0}, Lcom/pushwoosh/internal/network/d;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method


# virtual methods
.method public onReceive(Lcom/pushwoosh/internal/event/Event;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/internal/network/d;->a:Ljava/util/concurrent/CountDownLatch;

    check-cast p1, Lcom/pushwoosh/internal/event/InitHwidEvent;

    invoke-static {v0, p1}, Lcom/pushwoosh/internal/network/PushRequest;->a(Ljava/util/concurrent/CountDownLatch;Lcom/pushwoosh/internal/event/InitHwidEvent;)V

    return-void
.end method
