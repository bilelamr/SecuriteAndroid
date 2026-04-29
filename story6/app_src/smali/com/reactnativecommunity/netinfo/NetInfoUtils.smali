.class public Lcom/reactnativecommunity/netinfo/NetInfoUtils;
.super Ljava/lang/Object;
.source "NetInfoUtils.java"


# direct methods
.method public static reverseByteArray([B)V
    .locals 3

    const/4 v0, 0x0

    .line 11
    :goto_0
    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 12
    aget-byte v1, p0, v0

    .line 13
    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    aput-byte v2, p0, v0

    .line 14
    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aput-byte v1, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
