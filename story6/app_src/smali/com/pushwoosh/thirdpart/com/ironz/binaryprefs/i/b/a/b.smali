.class public final Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a;


# instance fields
.field private final a:F

.field private final b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/f;


# direct methods
.method public constructor <init>(FLcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/b;->a:F

    invoke-virtual {p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;->b()Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/f;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/b;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/f;

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/b;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/f;

    iget v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/b;->a:F

    invoke-virtual {v0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/f;->a(F)[B

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/b;->a:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
