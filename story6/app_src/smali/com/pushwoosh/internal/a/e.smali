.class public Lcom/pushwoosh/internal/a/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;ILjavax/crypto/Cipher;)I
    .locals 3

    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p0

    return p0

    :cond_0
    const/4 p2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x66ce58ac

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x1d2f0f4b

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "PKCS1Padding"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "OAEPPadding"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p2, 0x0

    :cond_3
    :goto_0
    div-int/lit8 p1, p1, 0x8

    if-eqz p2, :cond_5

    if-eq p2, v2, :cond_4

    return p1

    :cond_4
    add-int/lit8 p1, p1, -0xb

    return p1

    :cond_5
    add-int/lit8 p1, p1, -0x42

    return p1
.end method
