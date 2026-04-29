.class public final Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/k;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/e;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;->e()Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/k;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/e;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/k;

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/e;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/k;

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/k;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/e;->a:Ljava/lang/String;

    return-object v0
.end method
