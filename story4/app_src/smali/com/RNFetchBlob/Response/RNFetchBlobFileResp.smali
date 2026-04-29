.class public Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;
.super Lokhttp3/ResponseBody;
.source "RNFetchBlobFileResp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/RNFetchBlob/Response/RNFetchBlobFileResp$ProgressReportingSource;
    }
.end annotation


# instance fields
.field bytesDownloaded:J

.field mTaskId:Ljava/lang/String;

.field ofStream:Ljava/io/FileOutputStream;

.field originalBody:Lokhttp3/ResponseBody;

.field rctContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Lokhttp3/ResponseBody;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;->bytesDownloaded:J

    .line 39
    iput-object p1, p0, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;->rctContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 40
    iput-object p2, p0, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;->mTaskId:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;->originalBody:Lokhttp3/ResponseBody;

    if-eqz p4, :cond_3

    xor-int/lit8 p1, p5, 0x1

    const-string p2, "?append=true"

    const-string p3, ""

    .line 46
    invoke-virtual {p4, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 48
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 51
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p5

    if-nez p5, :cond_1

    invoke-virtual {p4}, Ljava/io/File;->mkdirs()Z

    move-result p5

    if-eqz p5, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Couldn\'t create dir: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_1
    :goto_0
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p4

    if-nez p4, :cond_2

    .line 56
    invoke-virtual {p3}, Ljava/io/File;->createNewFile()Z

    .line 57
    :cond_2
    new-instance p3, Ljava/io/FileOutputStream;

    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, p4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object p3, p0, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;->ofStream:Ljava/io/FileOutputStream;

    :cond_3
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;->originalBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;->originalBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 2

    .line 73
    new-instance v0, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp$ProgressReportingSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/RNFetchBlob/Response/RNFetchBlobFileResp$ProgressReportingSource;-><init>(Lcom/RNFetchBlob/Response/RNFetchBlobFileResp;Lcom/RNFetchBlob/Response/RNFetchBlobFileResp$1;)V

    .line 74
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method
