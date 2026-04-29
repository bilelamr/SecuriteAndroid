.class public Lcom/pushwoosh/internal/a/f;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/security/PublicKey;)I
    .locals 1

    instance-of v0, p1, Ljava/security/interfaces/RSAKey;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/security/interfaces/RSAKey;

    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "PublicKey should be instance of RsaKey"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(I[BLjavax/crypto/Cipher;Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    invoke-static {p4, p1, p3}, Lcom/pushwoosh/internal/a/e;->a(Ljava/lang/String;ILjavax/crypto/Cipher;)I

    move-result p4

    div-int/lit8 p1, p1, 0x8

    array-length v0, p2

    div-int/2addr v0, p4

    array-length v1, p2

    rem-int/2addr v1, p4

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int p1, p1, v0

    new-array p1, p1, [B

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_1

    add-int v3, v0, p4

    array-length v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {p2, v0, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-virtual {p3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    array-length v4, v0

    invoke-static {v0, v2, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v1, v0

    move v0, v3

    goto :goto_1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public a([BLjava/security/PublicKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p3}, Lcom/pushwoosh/internal/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-direct {p0, p2}, Lcom/pushwoosh/internal/a/f;->a(Ljava/security/PublicKey;)I

    move-result p2

    invoke-direct {p0, p2, p1, v0, p3}, Lcom/pushwoosh/internal/a/f;->a(I[BLjavax/crypto/Cipher;Ljava/lang/String;)[B

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    const-string p1, "(\\r|\\n)"

    const-string p3, ""

    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
