.class Lcom/RNFetchBlob/RNFetchBlob$11;
.super Ljava/lang/Object;
.source "RNFetchBlob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/RNFetchBlob/RNFetchBlob;->readStream(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bufferSize:I

.field final synthetic val$ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

.field final synthetic val$encoding:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$streamId:Ljava/lang/String;

.field final synthetic val$tick:I


# direct methods
.method constructor <init>(Lcom/RNFetchBlob/RNFetchBlob;Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 306
    iput-object p2, p0, Lcom/RNFetchBlob/RNFetchBlob$11;->val$ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    iput-object p3, p0, Lcom/RNFetchBlob/RNFetchBlob$11;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/RNFetchBlob/RNFetchBlob$11;->val$encoding:Ljava/lang/String;

    iput p5, p0, Lcom/RNFetchBlob/RNFetchBlob$11;->val$bufferSize:I

    iput p6, p0, Lcom/RNFetchBlob/RNFetchBlob$11;->val$tick:I

    iput-object p7, p0, Lcom/RNFetchBlob/RNFetchBlob$11;->val$streamId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 309
    new-instance v0, Lcom/RNFetchBlob/RNFetchBlobFS;

    iget-object v1, p0, Lcom/RNFetchBlob/RNFetchBlob$11;->val$ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {v0, v1}, Lcom/RNFetchBlob/RNFetchBlobFS;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 310
    iget-object v1, p0, Lcom/RNFetchBlob/RNFetchBlob$11;->val$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/RNFetchBlob/RNFetchBlob$11;->val$encoding:Ljava/lang/String;

    iget v3, p0, Lcom/RNFetchBlob/RNFetchBlob$11;->val$bufferSize:I

    iget v4, p0, Lcom/RNFetchBlob/RNFetchBlob$11;->val$tick:I

    iget-object v5, p0, Lcom/RNFetchBlob/RNFetchBlob$11;->val$streamId:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/RNFetchBlob/RNFetchBlobFS;->readStream(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method
