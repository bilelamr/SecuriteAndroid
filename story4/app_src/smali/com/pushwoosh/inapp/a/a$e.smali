.class Lcom/pushwoosh/inapp/a/a$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/inapp/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/pushwoosh/internal/event/Event;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/pushwoosh/internal/event/EventListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/pushwoosh/inapp/a/a;

.field private b:Lcom/pushwoosh/inapp/a/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/inapp/a/a$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private d:Lcom/pushwoosh/inapp/a/a$e;


# direct methods
.method constructor <init>(Lcom/pushwoosh/inapp/a/a;Ljava/lang/Class;Lcom/pushwoosh/inapp/a/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/pushwoosh/inapp/a/a$b<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pushwoosh/inapp/a/a$e;->a:Lcom/pushwoosh/inapp/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/pushwoosh/inapp/a/a$e;->b:Lcom/pushwoosh/inapp/a/a$b;

    iput-object p2, p0, Lcom/pushwoosh/inapp/a/a$e;->c:Ljava/lang/Class;

    iget-object p1, p0, Lcom/pushwoosh/inapp/a/a$e;->c:Ljava/lang/Class;

    invoke-static {p1, p0}, Lcom/pushwoosh/internal/event/EventBus;->subscribe(Ljava/lang/Class;Lcom/pushwoosh/internal/event/EventListener;)Lcom/pushwoosh/internal/event/Subscription;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/inapp/a/a$e;->d:Lcom/pushwoosh/inapp/a/a$e;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/pushwoosh/inapp/a/a$e;->d:Lcom/pushwoosh/inapp/a/a$e;

    if-ne v1, p0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pushwoosh/inapp/a/a$e;->a(Lcom/pushwoosh/inapp/a/a$e;)V

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inapp/a/a$e;->d:Lcom/pushwoosh/inapp/a/a$e;

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/a/a$e;->a()V

    :cond_1
    iget-object v0, p0, Lcom/pushwoosh/inapp/a/a$e;->c:Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/pushwoosh/internal/event/EventBus;->unsubscribe(Ljava/lang/Class;Lcom/pushwoosh/internal/event/EventListener;)V

    return-void
.end method

.method a(Lcom/pushwoosh/inapp/a/a$e;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/inapp/a/a$e;->d:Lcom/pushwoosh/inapp/a/a$e;

    return-void
.end method

.method public onReceive(Lcom/pushwoosh/internal/event/Event;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/inapp/a/a$e;->b:Lcom/pushwoosh/inapp/a/a$b;

    invoke-interface {v0, p1}, Lcom/pushwoosh/inapp/a/a$b;->a(Lcom/pushwoosh/internal/event/Event;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/pushwoosh/inapp/a/a$e;->a()V

    :cond_0
    return-void
.end method
