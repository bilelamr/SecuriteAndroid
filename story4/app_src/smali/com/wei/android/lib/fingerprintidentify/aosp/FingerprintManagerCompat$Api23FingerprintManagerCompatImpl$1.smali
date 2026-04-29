.class final Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;
.super Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationCallback;
.source "FingerprintManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;->wrapCallback(Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationCallback;)Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationCallback;


# direct methods
.method constructor <init>(Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationCallback;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;->val$callback:Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationCallback;

    invoke-direct {p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;->val$callback:Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;->val$callback:Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationCallback;

    invoke-virtual {v0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationFailed()V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;->val$callback:Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationResultInternal;)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;->val$callback:Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationCallback;

    new-instance v1, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationResult;

    invoke-virtual {p1}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationResultInternal;->getCryptoObject()Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;

    move-result-object p1

    invoke-static {p1}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;->unwrapCryptoObject(Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;)Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$CryptoObject;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationResult;-><init>(Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$CryptoObject;)V

    invoke-virtual {v0, v1}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationSucceeded(Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationResult;)V

    return-void
.end method
