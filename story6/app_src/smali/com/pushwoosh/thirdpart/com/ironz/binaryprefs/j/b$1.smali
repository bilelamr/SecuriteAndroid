.class Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/b;->a(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/b;


# direct methods
.method constructor <init>(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/b$1;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/b;

    iput-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/b$1;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/b;

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/b$1;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/b;->a(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/j/b;Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
