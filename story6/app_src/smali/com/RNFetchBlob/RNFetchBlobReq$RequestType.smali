.class final enum Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;
.super Ljava/lang/Enum;
.source "RNFetchBlobReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/RNFetchBlob/RNFetchBlobReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

.field public static final enum AsIs:Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

.field public static final enum Form:Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

.field public static final enum Others:Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

.field public static final enum SingleFile:Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

.field public static final enum WithoutBody:Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 70
    new-instance v0, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    const/4 v1, 0x0

    const-string v2, "Form"

    invoke-direct {v0, v2, v1}, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;->Form:Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    .line 71
    new-instance v0, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    const/4 v2, 0x1

    const-string v3, "SingleFile"

    invoke-direct {v0, v3, v2}, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;->SingleFile:Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    .line 72
    new-instance v0, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    const/4 v3, 0x2

    const-string v4, "AsIs"

    invoke-direct {v0, v4, v3}, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;->AsIs:Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    .line 73
    new-instance v0, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    const/4 v4, 0x3

    const-string v5, "WithoutBody"

    invoke-direct {v0, v5, v4}, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;->WithoutBody:Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    .line 74
    new-instance v0, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    const/4 v5, 0x4

    const-string v6, "Others"

    invoke-direct {v0, v6, v5}, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;->Others:Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    .line 69
    sget-object v6, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;->Form:Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    aput-object v6, v0, v1

    sget-object v1, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;->SingleFile:Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;->AsIs:Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;->WithoutBody:Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;->Others:Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;->$VALUES:[Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;
    .locals 1

    .line 69
    const-class v0, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    return-object p0
.end method

.method public static values()[Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;
    .locals 1

    .line 69
    sget-object v0, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;->$VALUES:[Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    invoke-virtual {v0}, [Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    return-object v0
.end method
