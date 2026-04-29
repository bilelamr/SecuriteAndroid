.class final enum Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;
.super Ljava/lang/Enum;
.source "RNFetchBlobReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/RNFetchBlob/RNFetchBlobReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ResponseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;

.field public static final enum FileStorage:Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;

.field public static final enum KeepInMemory:Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 78
    new-instance v0, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;

    const/4 v1, 0x0

    const-string v2, "KeepInMemory"

    invoke-direct {v0, v2, v1}, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;->KeepInMemory:Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;

    .line 79
    new-instance v0, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;

    const/4 v2, 0x1

    const-string v3, "FileStorage"

    invoke-direct {v0, v3, v2}, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;->FileStorage:Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;

    .line 77
    sget-object v3, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;->KeepInMemory:Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;->FileStorage:Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;->$VALUES:[Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;
    .locals 1

    .line 77
    const-class v0, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;

    return-object p0
.end method

.method public static values()[Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;
    .locals 1

    .line 77
    sget-object v0, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;->$VALUES:[Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;

    invoke-virtual {v0}, [Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;

    return-object v0
.end method
