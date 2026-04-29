.class public final Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a;


# instance fields
.field private final a:J

.field private final b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/h;


# direct methods
.method public constructor <init>(JLcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/d;->a:J

    invoke-virtual {p3}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;->d()Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/h;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/d;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/h;

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/d;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/h;

    iget-wide v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/d;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/h;->a(J)[B

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/d;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
