.class Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp$ProgressReportingSource;
.super Ljava/lang/Object;
.source "RNFetchBlobDefaultResp.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressReportingSource"
.end annotation


# instance fields
.field bytesRead:J

.field mOriginalSource:Lokio/BufferedSource;

.field final synthetic this$0:Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp;


# direct methods
.method constructor <init>(Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp;Lokio/BufferedSource;)V
    .locals 2

    .line 59
    iput-object p1, p0, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp$ProgressReportingSource;->this$0:Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 57
    iput-wide v0, p0, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp$ProgressReportingSource;->bytesRead:J

    .line 60
    iput-object p2, p0, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp$ProgressReportingSource;->mOriginalSource:Lokio/BufferedSource;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp$ProgressReportingSource;->mOriginalSource:Lokio/BufferedSource;

    invoke-interface {v0, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide p2

    .line 67
    iget-wide v0, p0, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp$ProgressReportingSource;->bytesRead:J

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-lez v4, :cond_0

    move-wide v4, p2

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp$ProgressReportingSource;->bytesRead:J

    .line 68
    iget-object v0, p0, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp$ProgressReportingSource;->this$0:Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp;

    iget-object v0, v0, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp;->mTaskId:Ljava/lang/String;

    invoke-static {v0}, Lcom/RNFetchBlob/RNFetchBlobReq;->getReportProgress(Ljava/lang/String;)Lcom/RNFetchBlob/RNFetchBlobProgressConfig;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp$ProgressReportingSource;->this$0:Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp;

    invoke-virtual {v1}, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp;->contentLength()J

    move-result-wide v4

    if-eqz v0, :cond_2

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    .line 70
    iget-wide v1, p0, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp$ProgressReportingSource;->bytesRead:J

    iget-object v3, p0, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp$ProgressReportingSource;->this$0:Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp;

    invoke-virtual {v3}, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp;->contentLength()J

    move-result-wide v3

    div-long/2addr v1, v3

    long-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/RNFetchBlob/RNFetchBlobProgressConfig;->shouldReport(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp$ProgressReportingSource;->this$0:Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp;

    iget-object v1, v1, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp;->mTaskId:Ljava/lang/String;

    const-string v2, "taskId"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-wide v1, p0, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp$ProgressReportingSource;->bytesRead:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "written"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp$ProgressReportingSource;->this$0:Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp;

    invoke-virtual {v1}, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp;->contentLength()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "total"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp$ProgressReportingSource;->this$0:Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp;

    iget-boolean v1, v1, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp;->isIncrement:Z

    const-string v2, "chunk"

    if-eqz v1, :cond_1

    .line 76
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, ""

    .line 79
    invoke-interface {v0, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_1
    iget-object p1, p0, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp$ProgressReportingSource;->this$0:Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp;

    iget-object p1, p1, Lcom/RNFetchBlob/Response/RNFetchBlobDefaultResp;->rctContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {p1, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v1, "RNFetchBlobProgress"

    .line 83
    invoke-interface {p1, v1, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-wide p2
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
