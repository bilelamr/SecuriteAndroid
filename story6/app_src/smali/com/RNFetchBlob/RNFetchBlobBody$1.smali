.class synthetic Lcom/RNFetchBlob/RNFetchBlobBody$1;
.super Ljava/lang/Object;
.source "RNFetchBlobBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/RNFetchBlob/RNFetchBlobBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$RNFetchBlob$RNFetchBlobReq$RequestType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 70
    invoke-static {}, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;->values()[Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/RNFetchBlob/RNFetchBlobBody$1;->$SwitchMap$com$RNFetchBlob$RNFetchBlobReq$RequestType:[I

    :try_start_0
    sget-object v0, Lcom/RNFetchBlob/RNFetchBlobBody$1;->$SwitchMap$com$RNFetchBlob$RNFetchBlobReq$RequestType:[I

    sget-object v1, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;->SingleFile:Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/RNFetchBlob/RNFetchBlobBody$1;->$SwitchMap$com$RNFetchBlob$RNFetchBlobReq$RequestType:[I

    sget-object v1, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;->AsIs:Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/RNFetchBlob/RNFetchBlobBody$1;->$SwitchMap$com$RNFetchBlob$RNFetchBlobReq$RequestType:[I

    sget-object v1, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;->Others:Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
