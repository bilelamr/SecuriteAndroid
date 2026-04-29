.class Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint$1;
.super Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationCallback;
.source "AndroidFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint;->doIdentify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint;


# direct methods
.method constructor <init>(Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint$1;->this$0:Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint;

    invoke-direct {p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    .line 77
    invoke-super {p0, p1, p2}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/16 p2, 0xa

    if-ne p1, p2, :cond_0

    goto :goto_2

    .line 84
    :cond_0
    iget-object p2, p0, Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint$1;->this$0:Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint;

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p2, p1}, Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint;->access$200(Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint;Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationFailed()V

    .line 72
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint$1;->this$0:Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint;

    invoke-static {v0}, Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint;->access$100(Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationResult;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationSucceeded(Lcom/wei/android/lib/fingerprintidentify/aosp/FingerprintManagerCompat$AuthenticationResult;)V

    .line 66
    iget-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint$1;->this$0:Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint;

    invoke-static {p1}, Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint;->access$000(Lcom/wei/android/lib/fingerprintidentify/impl/AndroidFingerprint;)V

    return-void
.end method
