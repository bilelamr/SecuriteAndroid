.class Lcom/RNFetchBlob/Response/RNFetchBlobFileResp$ProgressReportingSource;
.super Ljava/lang/Object;
.source "RNFetchBlobFileResp.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressReportingSource"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;


# direct methods
.method private constructor <init>(Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp$ProgressReportingSource;->this$0:Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;Lcom/RNFetchBlob/Response/RNFetchBlobFileResp$1;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp$ProgressReportingSource;-><init>(Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp$ProgressReportingSource;->this$0:Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;

    iget-object v0, v0, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;->ofStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int p1, p2

    .line 81
    :try_start_0
    new-array p2, p1, [B

    .line 82
    iget-object p3, p0, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp$ProgressReportingSource;->this$0:Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;

    iget-object p3, p3, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;->originalBody:Lokhttp3/ResponseBody;

    invoke-virtual {p3}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0, p1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    int-to-long v1, p1

    .line 83
    iget-object p1, p0, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp$ProgressReportingSource;->this$0:Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;

    iget-wide v3, p1, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;->bytesDownloaded:J

    const-wide/16 v5, 0x0

    cmp-long p3, v1, v5

    if-lez p3, :cond_0

    move-wide v7, v1

    goto :goto_0

    :cond_0
    move-wide v7, v5

    :goto_0
    add-long/2addr v3, v7

    iput-wide v3, p1, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;->bytesDownloaded:J

    cmp-long p1, v1, v5

    if-lez p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp$ProgressReportingSource;->this$0:Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;

    iget-object p1, p1, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;->ofStream:Ljava/io/FileOutputStream;

    long-to-int p3, v1

    invoke-virtual {p1, p2, v0, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp$ProgressReportingSource;->this$0:Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;

    iget-object p1, p1, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;->mTaskId:Ljava/lang/String;

    invoke-static {p1}, Lcom/RNFetchBlob/RNFetchBlobReq;->getReportProgress(Ljava/lang/String;)Lcom/RNFetchBlob/RNFetchBlobProgressConfig;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 88
    iget-object p2, p0, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp$ProgressReportingSource;->this$0:Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;

    invoke-virtual {p2}, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;->contentLength()J

    move-result-wide p2

    cmp-long v0, p2, v5

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp$ProgressReportingSource;->this$0:Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;

    iget-wide p2, p2, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;->bytesDownloaded:J

    iget-object v0, p0, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp$ProgressReportingSource;->this$0:Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;

    invoke-virtual {v0}, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;->contentLength()J

    move-result-wide v3

    div-long/2addr p2, v3

    long-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/RNFetchBlob/RNFetchBlobProgressConfig;->shouldReport(F)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 89
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string p2, "taskId"

    .line 90
    iget-object p3, p0, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp$ProgressReportingSource;->this$0:Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;

    iget-object p3, p3, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;->mTaskId:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "written"

    .line 91
    iget-object p3, p0, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp$ProgressReportingSource;->this$0:Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;

    iget-wide v3, p3, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;->bytesDownloaded:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "total"

    .line 92
    iget-object p3, p0, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp$ProgressReportingSource;->this$0:Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;

    invoke-virtual {p3}, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;->contentLength()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp$ProgressReportingSource;->this$0:Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;

    iget-object p2, p2, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;->rctContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class p3, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {p2, p3}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p2

    check-cast p2, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string p3, "RNFetchBlobProgress"

    .line 94
    invoke-interface {p2, p3, p1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-wide v1

    :catch_0
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
