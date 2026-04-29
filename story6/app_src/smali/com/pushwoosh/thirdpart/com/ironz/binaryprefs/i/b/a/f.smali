.class public final Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/l;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/f;->a:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;->f()Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/l;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/f;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/l;

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/f;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/l;

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/f;->a:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/l;->a(Ljava/util/Set;)[B

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/f;->a:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
