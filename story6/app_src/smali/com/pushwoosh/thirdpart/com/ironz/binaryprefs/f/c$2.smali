.class Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;


# direct methods
.method constructor <init>(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c$2;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;

    iput-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c$2;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c$2;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;->a(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/f/c;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
