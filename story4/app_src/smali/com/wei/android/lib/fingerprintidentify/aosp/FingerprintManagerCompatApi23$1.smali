.class final Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$1;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerprintManagerCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23;->wrapCallback(Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationCallback;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationCallback;


# direct methods
.method constructor <init>(Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationCallback;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$1;->val$callback:Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationCallback;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$1;->val$callback:Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$1;->val$callback:Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationCallback;

    invoke-virtual {v0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationCallback;->onAuthenticationFailed()V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$1;->val$callback:Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$1;->val$callback:Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationCallback;

    new-instance v1, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationResultInternal;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getCryptoObject()Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object p1

    invoke-static {p1}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23;->access$000(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationResultInternal;-><init>(Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$CryptoObject;)V

    invoke-virtual {v0, v1}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationCallback;->onAuthenticationSucceeded(Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompatApi23$AuthenticationResultInternal;)V

    return-void
.end method
