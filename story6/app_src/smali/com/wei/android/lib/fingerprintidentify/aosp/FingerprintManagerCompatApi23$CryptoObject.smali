.class public Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;
.super Ljava/lang/Object;
.source "FingerprintManagerCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CryptoObject"
.end annotation


# instance fields
.field private final mCipher:Ljavax/crypto/Cipher;

.field private final mMac:Ljavax/crypto/Mac;

.field private final mSignature:Ljava/security/Signature;


# direct methods
.method public constructor <init>(Ljava/security/Signature;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;->mSignature:Ljava/security/Signature;

    const/4 p1, 0x0

    .line 121
    iput-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    .line 122
    iput-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;->mMac:Ljavax/crypto/Mac;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;->mSignature:Ljava/security/Signature;

    .line 128
    iput-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;->mMac:Ljavax/crypto/Mac;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;->mMac:Ljavax/crypto/Mac;

    const/4 p1, 0x0

    .line 133
    iput-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    .line 134
    iput-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;->mSignature:Ljava/security/Signature;

    return-void
.end method


# virtual methods
.method public getCipher()Ljavax/crypto/Cipher;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method public getMac()Ljavax/crypto/Mac;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;->mMac:Ljavax/crypto/Mac;

    return-object v0
.end method

.method public getSignature()Ljava/security/Signature;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;->mSignature:Ljava/security/Signature;

    return-object v0
.end method
