.class Lcom/pushwoosh/inapp/a/a$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/inapp/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/pushwoosh/inapp/a/a;

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private c:Lcom/pushwoosh/inapp/a/a$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/inapp/a/a$f<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inapp/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/inapp/a/a$d;->a:Lcom/pushwoosh/inapp/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pushwoosh/inapp/a/a;Lcom/pushwoosh/inapp/a/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/inapp/a/a$d;-><init>(Lcom/pushwoosh/inapp/a/a;)V

    return-void
.end method


# virtual methods
.method a(Lcom/pushwoosh/inapp/a/a$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/inapp/a/a$f<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/inapp/a/a$d;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/inapp/a/a$d;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/pushwoosh/inapp/a/a$f;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/pushwoosh/inapp/a/a$d;->c:Lcom/pushwoosh/inapp/a/a$f;

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/inapp/a/a$d;->c:Lcom/pushwoosh/inapp/a/a$f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pushwoosh/inapp/a/a$d;->c:Lcom/pushwoosh/inapp/a/a$f;

    invoke-interface {v0, p1}, Lcom/pushwoosh/inapp/a/a$f;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pushwoosh/inapp/a/a$d;->c:Lcom/pushwoosh/inapp/a/a$f;

    :cond_0
    iput-object p1, p0, Lcom/pushwoosh/inapp/a/a$d;->b:Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
