.class public final Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat;
.super Ljava/lang/Object;
.source "FingerprintManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;,
        Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$FingerprintManagerCompatImpl;,
        Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationCallback;,
        Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationResult;,
        Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$CryptoObject;
    }
.end annotation


# static fields
.field private static final IMPL:Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$FingerprintManagerCompatImpl;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;

    invoke-direct {v0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;-><init>()V

    sput-object v0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat;->IMPL:Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$FingerprintManagerCompatImpl;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat;
    .locals 1

    .line 36
    new-instance v0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat;

    invoke-direct {v0, p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public authenticate(Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$CryptoObject;ILandroidx/core/os/CancellationSignal;Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V
    .locals 7

    .line 60
    sget-object v0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat;->IMPL:Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$FingerprintManagerCompatImpl;

    iget-object v1, p0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$FingerprintManagerCompatImpl;->authenticate(Landroid/content/Context;Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$CryptoObject;ILandroidx/core/os/CancellationSignal;Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public hasEnrolledFingerprints()Z
    .locals 2

    .line 50
    sget-object v0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat;->IMPL:Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$FingerprintManagerCompatImpl;

    iget-object v1, p0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$FingerprintManagerCompatImpl;->hasEnrolledFingerprints(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isHardwareDetected()Z
    .locals 2

    .line 54
    sget-object v0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat;->IMPL:Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$FingerprintManagerCompatImpl;

    iget-object v1, p0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$FingerprintManagerCompatImpl;->isHardwareDetected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
