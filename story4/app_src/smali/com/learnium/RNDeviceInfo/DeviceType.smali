.class public final enum Lcom/learnium/RNDeviceInfo/DeviceType;
.super Ljava/lang/Enum;
.source "DeviceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/learnium/RNDeviceInfo/DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/learnium/RNDeviceInfo/DeviceType;

.field public static final enum HANDSET:Lcom/learnium/RNDeviceInfo/DeviceType;

.field public static final enum TABLET:Lcom/learnium/RNDeviceInfo/DeviceType;

.field public static final enum TV:Lcom/learnium/RNDeviceInfo/DeviceType;

.field public static final enum UNKNOWN:Lcom/learnium/RNDeviceInfo/DeviceType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lcom/learnium/RNDeviceInfo/DeviceType;

    const/4 v1, 0x0

    const-string v2, "HANDSET"

    const-string v3, "Handset"

    invoke-direct {v0, v2, v1, v3}, Lcom/learnium/RNDeviceInfo/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/learnium/RNDeviceInfo/DeviceType;->HANDSET:Lcom/learnium/RNDeviceInfo/DeviceType;

    .line 5
    new-instance v0, Lcom/learnium/RNDeviceInfo/DeviceType;

    const/4 v2, 0x1

    const-string v3, "TABLET"

    const-string v4, "Tablet"

    invoke-direct {v0, v3, v2, v4}, Lcom/learnium/RNDeviceInfo/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/learnium/RNDeviceInfo/DeviceType;->TABLET:Lcom/learnium/RNDeviceInfo/DeviceType;

    .line 6
    new-instance v0, Lcom/learnium/RNDeviceInfo/DeviceType;

    const/4 v3, 0x2

    const-string v4, "TV"

    const-string v5, "Tv"

    invoke-direct {v0, v4, v3, v5}, Lcom/learnium/RNDeviceInfo/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/learnium/RNDeviceInfo/DeviceType;->TV:Lcom/learnium/RNDeviceInfo/DeviceType;

    .line 7
    new-instance v0, Lcom/learnium/RNDeviceInfo/DeviceType;

    const/4 v4, 0x3

    const-string v5, "UNKNOWN"

    const-string v6, "unknown"

    invoke-direct {v0, v5, v4, v6}, Lcom/learnium/RNDeviceInfo/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/learnium/RNDeviceInfo/DeviceType;->UNKNOWN:Lcom/learnium/RNDeviceInfo/DeviceType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/learnium/RNDeviceInfo/DeviceType;

    .line 3
    sget-object v5, Lcom/learnium/RNDeviceInfo/DeviceType;->HANDSET:Lcom/learnium/RNDeviceInfo/DeviceType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/learnium/RNDeviceInfo/DeviceType;->TABLET:Lcom/learnium/RNDeviceInfo/DeviceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/learnium/RNDeviceInfo/DeviceType;->TV:Lcom/learnium/RNDeviceInfo/DeviceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/learnium/RNDeviceInfo/DeviceType;->UNKNOWN:Lcom/learnium/RNDeviceInfo/DeviceType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/learnium/RNDeviceInfo/DeviceType;->$VALUES:[Lcom/learnium/RNDeviceInfo/DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/learnium/RNDeviceInfo/DeviceType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/learnium/RNDeviceInfo/DeviceType;
    .locals 1

    .line 3
    const-class v0, Lcom/learnium/RNDeviceInfo/DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/learnium/RNDeviceInfo/DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/learnium/RNDeviceInfo/DeviceType;
    .locals 1

    .line 3
    sget-object v0, Lcom/learnium/RNDeviceInfo/DeviceType;->$VALUES:[Lcom/learnium/RNDeviceInfo/DeviceType;

    invoke-virtual {v0}, [Lcom/learnium/RNDeviceInfo/DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/learnium/RNDeviceInfo/DeviceType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/learnium/RNDeviceInfo/DeviceType;->value:Ljava/lang/String;

    return-object v0
.end method
