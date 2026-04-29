.class public Lcom/fpe/comptenickel/RSA;
.super Ljava/lang/Object;
.source "RSA.java"


# static fields
.field private static final CharsetUTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private keyTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/fpe/comptenickel/RSA;->CharsetUTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/fpe/comptenickel/RSA;->keyTag:Ljava/lang/String;

    return-void
.end method

.method private getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AndroidKeyStore"

    .line 74
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 75
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 76
    invoke-virtual {v0, p1, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p1

    check-cast p1, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 77
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "NoPrivateKey"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public generateKeys(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fpe/comptenickel/RSA;->keyTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RSA"

    const-string v1, "AndroidKeyStore"

    .line 50
    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 51
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x800

    const/4 v4, 0x0

    const/16 v5, 0x17

    if-lt v2, v5, :cond_0

    .line 52
    new-instance p1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/16 v0, 0xf

    invoke-direct {p1, p2, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 53
    invoke-virtual {p1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    const-string p2, "NONE"

    const-string v0, "SHA-512"

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    .line 54
    invoke-virtual {p1, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    const-string p2, "PKCS1Padding"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    const-string p2, "PKCS1"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 55
    invoke-virtual {p1, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p1

    .line 52
    invoke-virtual {v1, p1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v5, 0x1

    .line 58
    invoke-virtual {v2, v5, v5}, Ljava/util/Calendar;->add(II)V

    .line 59
    new-instance v6, Landroid/security/KeyPairGeneratorSpec$Builder;

    invoke-direct {v6, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/fpe/comptenickel/RSA;->keyTag:Ljava/lang/String;

    .line 60
    invoke-virtual {v6, v7}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v6

    new-instance v7, Ljavax/security/auth/x500/X500Principal;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v4

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v5

    const-string p1, "CN=%s, OU=%s"

    invoke-static {p1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v7, p1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    sget-object p2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 62
    invoke-virtual {p1, p2}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    .line 63
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    .line 65
    invoke-virtual {p1, v3}, Landroid/security/KeyPairGeneratorSpec$Builder;->setKeySize(I)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setKeyType(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    .line 66
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 69
    :goto_0
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    invoke-static {p1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fpe/comptenickel/RSA;->keyTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 85
    sget-object v0, Lcom/fpe/comptenickel/RSA;->CharsetUTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "SHA512withRSA"

    .line 86
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 87
    invoke-direct {p0, p2}, Lcom/fpe/comptenickel/RSA;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 88
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 89
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    const/4 p2, 0x0

    .line 90
    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\n"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
