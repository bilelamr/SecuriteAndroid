.class public Lcom/pushwoosh/internal/utils/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/internal/utils/a$a;
    }
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
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:Lcom/pushwoosh/internal/utils/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pushwoosh/internal/utils/a$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/pushwoosh/internal/utils/a$a;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/internal/utils/a$a<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/internal/utils/a;->a:Ljava/util/List;

    iput p2, p0, Lcom/pushwoosh/internal/utils/a;->b:I

    iput-object p1, p0, Lcom/pushwoosh/internal/utils/a;->c:Lcom/pushwoosh/internal/utils/a$a;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/pushwoosh/internal/utils/a;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/internal/utils/a;)V
    .locals 3

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/pushwoosh/internal/utils/a;->a:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/pushwoosh/internal/utils/a;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/pushwoosh/internal/utils/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/pushwoosh/internal/utils/a;->c:Lcom/pushwoosh/internal/utils/a$a;

    invoke-interface {p0, v0}, Lcom/pushwoosh/internal/utils/a$a;->a(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/internal/utils/a;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/pushwoosh/internal/utils/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pushwoosh/internal/utils/a;->d:Landroid/os/Handler;

    invoke-static {p0}, Lcom/pushwoosh/internal/utils/b;->a(Lcom/pushwoosh/internal/utils/a;)Ljava/lang/Runnable;

    move-result-object v2

    iget v3, p0, Lcom/pushwoosh/internal/utils/a;->b:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v1, p0, Lcom/pushwoosh/internal/utils/a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
