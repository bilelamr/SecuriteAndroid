.class final enum Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;
.super Ljava/lang/Enum;
.source "RNFetchBlobReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/RNFetchBlob/RNFetchBlobReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ResponseFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;

.field public static final enum Auto:Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;

.field public static final enum BASE64:Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;

.field public static final enum UTF8:Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 83
    new-instance v0, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;

    const/4 v1, 0x0

    const-string v2, "Auto"

    invoke-direct {v0, v2, v1}, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;->Auto:Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;

    .line 84
    new-instance v0, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;

    const/4 v2, 0x1

    const-string v3, "UTF8"

    invoke-direct {v0, v3, v2}, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;->UTF8:Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;

    .line 85
    new-instance v0, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;

    const/4 v3, 0x2

    const-string v4, "BASE64"

    invoke-direct {v0, v4, v3}, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;->BASE64:Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;

    .line 82
    sget-object v4, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;->Auto:Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;

    aput-object v4, v0, v1

    sget-object v1, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;->UTF8:Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;->BASE64:Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;

    aput-object v1, v0, v3

    sput-object v0, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;->$VALUES:[Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;
    .locals 1

    .line 82
    const-class v0, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;

    return-object p0
.end method

.method public static values()[Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;
    .locals 1

    .line 82
    sget-object v0, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;->$VALUES:[Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;

    invoke-virtual {v0}, [Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/RNFetchBlob/RNFetchBlobReq$ResponseFormat;

    return-object v0
.end method
