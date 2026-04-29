.class Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;
.super Ljava/lang/Object;
.source "FingerprintManagerCompat.java"

# interfaces
.implements Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$FingerprintManagerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api23FingerprintManagerCompatImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static unwrapCryptoObject(Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;)Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$CryptoObject;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 176
    new-instance v0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$CryptoObject;

    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 178
    new-instance v0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$CryptoObject;

    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$CryptoObject;-><init>(Ljava/security/Signature;)V

    return-object v0

    .line 179
    :cond_2
    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 180
    new-instance v0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$CryptoObject;

    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    :cond_3
    return-object v0
.end method

.method private static wrapCallback(Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationCallback;)Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationCallback;
    .locals 1

    .line 187
    new-instance v0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;

    invoke-direct {v0, p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;-><init>(Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationCallback;)V

    return-object v0
.end method

.method private static wrapCryptoObject(Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$CryptoObject;)Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 162
    new-instance v0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;

    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 164
    new-instance v0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;

    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;-><init>(Ljava/security/Signature;)V

    return-object v0

    .line 165
    :cond_2
    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 166
    new-instance v0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;

    invoke-virtual {p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    :cond_3
    return-object v0
.end method


# virtual methods
.method public authenticate(Landroid/content/Context;Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$CryptoObject;ILandroidx/core/os/CancellationSignal;Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V
    .locals 6

    .line 154
    invoke-static {p2}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;->wrapCryptoObject(Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$CryptoObject;)Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;

    move-result-object v1

    if-eqz p4, :cond_0

    .line 155
    invoke-virtual {p4}, Landroidx/core/os/CancellationSignal;->getCancellationSignalObject()Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move-object v3, p2

    invoke-static {p5}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;->wrapCallback(Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationCallback;)Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationCallback;

    move-result-object v4

    move-object v0, p1

    move v2, p3

    move-object v5, p6

    .line 154
    invoke-static/range {v0 .. v5}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23;->authenticate(Landroid/content/Context;Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;ILjava/lang/Object;Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public hasEnrolledFingerprints(Landroid/content/Context;)Z
    .locals 0

    .line 143
    invoke-static {p1}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23;->hasEnrolledFingerprints(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public isHardwareDetected(Landroid/content/Context;)Z
    .locals 0

    .line 148
    invoke-static {p1}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23;->isHardwareDetected(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
