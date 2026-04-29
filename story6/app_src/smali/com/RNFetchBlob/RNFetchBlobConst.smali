.class public Lcom/RNFetchBlob/RNFetchBlobConst;
.super Ljava/lang/Object;
.source "RNFetchBlobConst.java"


# static fields
.field public static final GET_CONTENT_INTENT:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x1863c

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/RNFetchBlob/RNFetchBlobConst;->GET_CONTENT_INTENT:Ljava/lang/Integer;

    return-void
.end method
