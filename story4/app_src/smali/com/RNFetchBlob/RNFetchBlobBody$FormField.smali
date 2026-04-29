.class Lcom/RNFetchBlob/RNFetchBlobBody$FormField;
.super Ljava/lang/Object;
.source "RNFetchBlobBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/RNFetchBlob/RNFetchBlobBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormField"
.end annotation


# instance fields
.field public data:Ljava/lang/String;

.field filename:Ljava/lang/String;

.field mime:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/RNFetchBlob/RNFetchBlobBody;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "name"

    .line 387
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/RNFetchBlob/RNFetchBlobBody$FormField;->name:Ljava/lang/String;

    :cond_0
    const-string p1, "filename"

    .line 389
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/RNFetchBlob/RNFetchBlobBody$FormField;->filename:Ljava/lang/String;

    :cond_1
    const-string p1, "type"

    .line 391
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/RNFetchBlob/RNFetchBlobBody$FormField;->mime:Ljava/lang/String;

    goto :goto_1

    .line 394
    :cond_2
    iget-object p1, p0, Lcom/RNFetchBlob/RNFetchBlobBody$FormField;->filename:Ljava/lang/String;

    if-nez p1, :cond_3

    const-string p1, "text/plain"

    goto :goto_0

    :cond_3
    const-string p1, "application/octet-stream"

    :goto_0
    iput-object p1, p0, Lcom/RNFetchBlob/RNFetchBlobBody$FormField;->mime:Ljava/lang/String;

    :goto_1
    const-string p1, "data"

    .line 396
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 397
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/RNFetchBlob/RNFetchBlobBody$FormField;->data:Ljava/lang/String;

    :cond_4
    return-void
.end method
