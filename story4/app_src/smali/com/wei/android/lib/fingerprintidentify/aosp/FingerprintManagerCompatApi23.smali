.class public final Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23;
.super Ljava/lang/Object;
.source "FingerprintManagerCompatApi23.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationCallback;,
        Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationResultInternal;,
        Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;
    }
.end annotation


# direct methods
.method static synthetic access$000(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23;->unwrapCryptoObject(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;

    move-result-object p0

    return-object p0
.end method

.method public static authenticate(Landroid/content/Context;Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;ILjava/lang/Object;Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationCallback;Landroid/os/Handler;)V
    .locals 6

    .line 55
    invoke-static {p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {p1}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23;->wrapCryptoObject(Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object v1

    move-object v2, p3

    check-cast v2, Landroid/os/CancellationSignal;

    invoke-static {p4}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23;->wrapCallback(Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationCallback;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v4

    move v3, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method private static getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1

    const-string v0, "fingerprint"

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    return-object p0
.end method

.method public static hasEnrolledFingerprints(Landroid/content/Context;)Z
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHardwareDetected(Landroid/content/Context;)Z
    .locals 0

    .line 50
    invoke-static {p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static unwrapCryptoObject(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 79
    new-instance v0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0

    .line 80
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 81
    new-instance v0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;-><init>(Ljava/security/Signature;)V

    return-object v0

    .line 82
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 83
    new-instance v0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    :cond_3
    return-object v0
.end method

.method private static wrapCallback(Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationCallback;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .locals 1

    .line 90
    new-instance v0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$1;

    invoke-direct {v0, p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$1;-><init>(Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationCallback;)V

    return-object v0
.end method

.method private static wrapCryptoObject(Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 65
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 67
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljava/security/Signature;)V

    return-object v0

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 69
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    :cond_3
    return-object v0
.end method
