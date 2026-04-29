.class public final Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;",
            "Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;->a:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;

    invoke-interface {v1, v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;->a(Ljava/lang/Exception;)V

    return-object p1
.end method

.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d/a;

    invoke-direct {v1, v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d/a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b()Ljava/lang/Object;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d/a;

    invoke-direct {v1, v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/d/a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public c()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/a;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;

    invoke-interface {v1, v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method
