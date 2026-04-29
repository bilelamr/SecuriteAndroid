.class final enum Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;
.super Ljava/lang/Enum;
.source "RNFetchBlobProgressConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/RNFetchBlob/RNFetchBlobProgressConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ReportType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;

.field public static final enum Download:Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;

.field public static final enum Upload:Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;

    const/4 v1, 0x0

    const-string v2, "Upload"

    invoke-direct {v0, v2, v1}, Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;->Upload:Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;

    .line 10
    new-instance v0, Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;

    const/4 v2, 0x1

    const-string v3, "Download"

    invoke-direct {v0, v3, v2}, Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;->Download:Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;

    .line 8
    sget-object v3, Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;->Upload:Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;->Download:Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;->$VALUES:[Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;
    .locals 1

    .line 8
    const-class v0, Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;

    return-object p0
.end method

.method public static values()[Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;
    .locals 1

    .line 8
    sget-object v0, Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;->$VALUES:[Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;

    invoke-virtual {v0}, [Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/RNFetchBlob/RNFetchBlobProgressConfig$ReportType;

    return-object v0
.end method
