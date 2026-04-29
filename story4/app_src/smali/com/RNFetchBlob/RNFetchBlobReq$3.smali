.class Lcom/RNFetchBlob/RNFetchBlobReq$3;
.super Ljava/lang/Object;
.source "RNFetchBlobReq.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/RNFetchBlob/RNFetchBlobReq;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/RNFetchBlob/RNFetchBlobReq;


# direct methods
.method constructor <init>(Lcom/RNFetchBlob/RNFetchBlobReq;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/RNFetchBlob/RNFetchBlobReq$3;->this$0:Lcom/RNFetchBlob/RNFetchBlobReq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 5

    .line 409
    iget-object p1, p0, Lcom/RNFetchBlob/RNFetchBlobReq$3;->this$0:Lcom/RNFetchBlob/RNFetchBlobReq;

    iget-object p1, p1, Lcom/RNFetchBlob/RNFetchBlobReq;->taskId:Ljava/lang/String;

    invoke-static {p1}, Lcom/RNFetchBlob/RNFetchBlobReq;->cancelTask(Ljava/lang/String;)V

    .line 410
    iget-object p1, p0, Lcom/RNFetchBlob/RNFetchBlobReq$3;->this$0:Lcom/RNFetchBlob/RNFetchBlobReq;

    iget-object v0, p1, Lcom/RNFetchBlob/RNFetchBlobReq;->respInfo:Lcom/facebook/react/bridge/WritableMap;

    if-nez v0, :cond_0

    .line 411
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    iput-object v0, p1, Lcom/RNFetchBlob/RNFetchBlobReq;->respInfo:Lcom/facebook/react/bridge/WritableMap;

    .line 415
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Ljava/net/SocketTimeoutException;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    .line 416
    iget-object p1, p0, Lcom/RNFetchBlob/RNFetchBlobReq$3;->this$0:Lcom/RNFetchBlob/RNFetchBlobReq;

    iget-object p1, p1, Lcom/RNFetchBlob/RNFetchBlobReq;->respInfo:Lcom/facebook/react/bridge/WritableMap;

    const-string p2, "timeout"

    invoke-interface {p1, p2, v3}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 417
    iget-object p1, p0, Lcom/RNFetchBlob/RNFetchBlobReq$3;->this$0:Lcom/RNFetchBlob/RNFetchBlobReq;

    iget-object p1, p1, Lcom/RNFetchBlob/RNFetchBlobReq;->callback:Lcom/facebook/react/bridge/Callback;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v2, "request timed out."

    aput-object v2, p2, v1

    aput-object v4, p2, v3

    aput-object v4, p2, v0

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 420
    :cond_1
    iget-object p1, p0, Lcom/RNFetchBlob/RNFetchBlobReq$3;->this$0:Lcom/RNFetchBlob/RNFetchBlobReq;

    iget-object p1, p1, Lcom/RNFetchBlob/RNFetchBlobReq;->callback:Lcom/facebook/react/bridge/Callback;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 421
    :goto_0
    iget-object p1, p0, Lcom/RNFetchBlob/RNFetchBlobReq$3;->this$0:Lcom/RNFetchBlob/RNFetchBlobReq;

    invoke-static {p1}, Lcom/RNFetchBlob/RNFetchBlobReq;->access$000(Lcom/RNFetchBlob/RNFetchBlobReq;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    iget-object p1, p0, Lcom/RNFetchBlob/RNFetchBlobReq$3;->this$0:Lcom/RNFetchBlob/RNFetchBlobReq;

    iget-object p1, p1, Lcom/RNFetchBlob/RNFetchBlobReq;->options:Lcom/RNFetchBlob/RNFetchBlobConfig;

    iget-object p1, p1, Lcom/RNFetchBlob/RNFetchBlobConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    if-eqz p1, :cond_5

    const-string v0, "title"

    .line 431
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/RNFetchBlob/RNFetchBlobReq$3;->this$0:Lcom/RNFetchBlob/RNFetchBlobReq;

    iget-object v1, v1, Lcom/RNFetchBlob/RNFetchBlobReq;->options:Lcom/RNFetchBlob/RNFetchBlobConfig;

    iget-object v1, v1, Lcom/RNFetchBlob/RNFetchBlobConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    const-string v0, "description"

    .line 433
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v5, v2

    const-string v0, "mime"

    .line 435
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 436
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "text/plain"

    :goto_1
    move-object v7, v0

    const-string v0, "mediaScannable"

    .line 437
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 438
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    move v6, v0

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    const-string v0, "notification"

    .line 439
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 440
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    move v11, p1

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    .line 441
    :goto_3
    sget-object p1, Lcom/RNFetchBlob/RNFetchBlob;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v0, "download"

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/DownloadManager;

    .line 442
    iget-object p1, p0, Lcom/RNFetchBlob/RNFetchBlobReq$3;->this$0:Lcom/RNFetchBlob/RNFetchBlobReq;

    iget-object v8, p1, Lcom/RNFetchBlob/RNFetchBlobReq;->destPath:Ljava/lang/String;

    iget-wide v9, p1, Lcom/RNFetchBlob/RNFetchBlobReq;->contentLength:J

    invoke-virtual/range {v3 .. v11}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J

    .line 445
    :cond_5
    iget-object p1, p0, Lcom/RNFetchBlob/RNFetchBlobReq$3;->this$0:Lcom/RNFetchBlob/RNFetchBlobReq;

    invoke-static {p1, p2}, Lcom/RNFetchBlob/RNFetchBlobReq;->access$100(Lcom/RNFetchBlob/RNFetchBlobReq;Lokhttp3/Response;)V

    return-void
.end method
