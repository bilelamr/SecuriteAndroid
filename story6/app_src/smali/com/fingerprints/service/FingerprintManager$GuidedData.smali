.class public Lcom/fingerprints/service/FingerprintManager$GuidedData;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingerprints/service/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GuidedData"
.end annotation


# instance fields
.field public guidedLastTouch:Lcom/fingerprints/service/FingerprintManager$GuidedRect;

.field public guidedMaskList:Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;

.field public guidedNextDirection:I

.field public guidedNextTouch:Lcom/fingerprints/service/FingerprintManager$GuidedRect;

.field public guidedProgress:I

.field public guidedResult:Lcom/fingerprints/service/FingerprintManager$GuidedResult;

.field final synthetic this$0:Lcom/fingerprints/service/FingerprintManager;


# direct methods
.method public constructor <init>(Lcom/fingerprints/service/FingerprintManager;IILcom/fingerprints/service/FingerprintManager$GuidedResult;Lcom/fingerprints/service/FingerprintManager$GuidedRect;Lcom/fingerprints/service/FingerprintManager$GuidedRect;Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager$GuidedData;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput p2, p0, Lcom/fingerprints/service/FingerprintManager$GuidedData;->guidedProgress:I

    .line 155
    iput p3, p0, Lcom/fingerprints/service/FingerprintManager$GuidedData;->guidedNextDirection:I

    .line 156
    iput-object p4, p0, Lcom/fingerprints/service/FingerprintManager$GuidedData;->guidedResult:Lcom/fingerprints/service/FingerprintManager$GuidedResult;

    .line 157
    iput-object p5, p0, Lcom/fingerprints/service/FingerprintManager$GuidedData;->guidedLastTouch:Lcom/fingerprints/service/FingerprintManager$GuidedRect;

    .line 158
    iput-object p6, p0, Lcom/fingerprints/service/FingerprintManager$GuidedData;->guidedNextTouch:Lcom/fingerprints/service/FingerprintManager$GuidedRect;

    .line 159
    iput-object p7, p0, Lcom/fingerprints/service/FingerprintManager$GuidedData;->guidedMaskList:Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;

    return-void
.end method
