.class public final Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a;


# instance fields
.field private final a:I

.field private final b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/g;


# direct methods
.method public constructor <init>(ILcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/c;->a:I

    invoke-virtual {p2}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a;->c()Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/g;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/c;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/g;

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/c;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/g;

    iget v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/c;->a:I

    invoke-virtual {v0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/g;->a(I)[B

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/b/a/c;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
