.class Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint$1;
.super Ljava/lang/Object;
.source "MeiZuFingerprint.java"

# interfaces
.implements Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint;->doIdentify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint;


# direct methods
.method constructor <init>(Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint$1;->this$0:Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIdentified(IZ)V
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint$1;->this$0:Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint;

    invoke-static {p1}, Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint;->access$000(Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint;)V

    return-void
.end method

.method public onNoMatch()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint$1;->this$0:Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint;

    invoke-static {v0}, Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint;->access$100(Lcom/wei/android/lib/fingerprintidentify/impl/MeiZuFingerprint;)V

    return-void
.end method
