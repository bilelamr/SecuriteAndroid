.class public final Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a;


# instance fields
.field private final a:Z

.field private final b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/a;


# direct methods
.method public constructor <init>(ZLcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/a;->a:Z

    invoke-virtual {p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;->a()Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/a;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/a;

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/a;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/a;

    iget-boolean v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/a;->a:Z

    invoke-virtual {v0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/a;->a(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/a;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
