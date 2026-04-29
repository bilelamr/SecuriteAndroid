.class public final Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(B)Z
    .locals 1

    const/16 v0, -0xc

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a([B)[B
    .locals 2

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/i/a/b;->a([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public a([BII)[B
    .locals 2

    new-array v0, p3, [B

    add-int/lit8 p2, p2, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
