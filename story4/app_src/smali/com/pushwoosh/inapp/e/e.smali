.class final synthetic Lcom/pushwoosh/inapp/e/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/event/EventListener;


# instance fields
.field private final a:Lcom/pushwoosh/inapp/e/b/b;

.field private final b:[Lcom/pushwoosh/inapp/event/a$a;

.field private final c:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inapp/e/b/b;[Lcom/pushwoosh/inapp/event/a$a;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/e/e;->a:Lcom/pushwoosh/inapp/e/b/b;

    iput-object p2, p0, Lcom/pushwoosh/inapp/e/e;->b:[Lcom/pushwoosh/inapp/event/a$a;

    iput-object p3, p0, Lcom/pushwoosh/inapp/e/e;->c:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static a(Lcom/pushwoosh/inapp/e/b/b;[Lcom/pushwoosh/inapp/event/a$a;Ljava/util/concurrent/CountDownLatch;)Lcom/pushwoosh/internal/event/EventListener;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/e/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/pushwoosh/inapp/e/e;-><init>(Lcom/pushwoosh/inapp/e/b/b;[Lcom/pushwoosh/inapp/event/a$a;Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method


# virtual methods
.method public onReceive(Lcom/pushwoosh/internal/event/Event;)V
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/inapp/e/e;->a:Lcom/pushwoosh/inapp/e/b/b;

    iget-object v1, p0, Lcom/pushwoosh/inapp/e/e;->b:[Lcom/pushwoosh/inapp/event/a$a;

    iget-object v2, p0, Lcom/pushwoosh/inapp/e/e;->c:Ljava/util/concurrent/CountDownLatch;

    check-cast p1, Lcom/pushwoosh/inapp/event/a;

    invoke-static {v0, v1, v2, p1}, Lcom/pushwoosh/inapp/e/c;->a(Lcom/pushwoosh/inapp/e/b/b;[Lcom/pushwoosh/inapp/event/a$a;Ljava/util/concurrent/CountDownLatch;Lcom/pushwoosh/inapp/event/a;)V

    return-void
.end method
