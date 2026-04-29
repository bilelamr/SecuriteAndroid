.class public Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp;
.super Lokhttp3/ResponseBody;
.source "RNFetchBlobDefaultResp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp$ProgressReportingSource;
    }
.end annotation


# instance fields
.field isIncrement:Z

.field mTaskId:Ljava/lang/String;

.field originalBody:Lokhttp3/ResponseBody;

.field rctContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Lokhttp3/ResponseBody;Z)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp;->isIncrement:Z

    .line 33
    iput-object p1, p0, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp;->rctContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 34
    iput-object p2, p0, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp;->mTaskId:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp;->originalBody:Lokhttp3/ResponseBody;

    .line 36
    iput-boolean p4, p0, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp;->isIncrement:Z

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp;->originalBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp;->originalBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 2

    .line 51
    new-instance v0, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp$ProgressReportingSource;

    iget-object v1, p0, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp;->originalBody:Lokhttp3/ResponseBody;

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp$ProgressReportingSource;-><init>(Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp;Lokio/BufferedSource;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method
