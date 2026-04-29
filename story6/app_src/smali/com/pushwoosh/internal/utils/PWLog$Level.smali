.class public final enum Lcom/pushwoosh/internal/utils/PWLog$Level;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/internal/utils/PWLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pushwoosh/internal/utils/PWLog$Level;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEBUG:Lcom/pushwoosh/internal/utils/PWLog$Level;

.field public static final enum ERROR:Lcom/pushwoosh/internal/utils/PWLog$Level;

.field public static final enum FATAL:Lcom/pushwoosh/internal/utils/PWLog$Level;

.field public static final enum INFO:Lcom/pushwoosh/internal/utils/PWLog$Level;

.field public static final enum INTERNAL:Lcom/pushwoosh/internal/utils/PWLog$Level;

.field public static final enum NOISE:Lcom/pushwoosh/internal/utils/PWLog$Level;

.field public static final enum NONE:Lcom/pushwoosh/internal/utils/PWLog$Level;

.field public static final enum WARN:Lcom/pushwoosh/internal/utils/PWLog$Level;

.field private static final synthetic a:[Lcom/pushwoosh/internal/utils/PWLog$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/pushwoosh/internal/utils/PWLog$Level;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/pushwoosh/internal/utils/PWLog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/internal/utils/PWLog$Level;->NONE:Lcom/pushwoosh/internal/utils/PWLog$Level;

    new-instance v0, Lcom/pushwoosh/internal/utils/PWLog$Level;

    const/4 v2, 0x1

    const-string v3, "FATAL"

    invoke-direct {v0, v3, v2}, Lcom/pushwoosh/internal/utils/PWLog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/internal/utils/PWLog$Level;->FATAL:Lcom/pushwoosh/internal/utils/PWLog$Level;

    new-instance v0, Lcom/pushwoosh/internal/utils/PWLog$Level;

    const/4 v3, 0x2

    const-string v4, "ERROR"

    invoke-direct {v0, v4, v3}, Lcom/pushwoosh/internal/utils/PWLog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/internal/utils/PWLog$Level;->ERROR:Lcom/pushwoosh/internal/utils/PWLog$Level;

    new-instance v0, Lcom/pushwoosh/internal/utils/PWLog$Level;

    const/4 v4, 0x3

    const-string v5, "WARN"

    invoke-direct {v0, v5, v4}, Lcom/pushwoosh/internal/utils/PWLog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/internal/utils/PWLog$Level;->WARN:Lcom/pushwoosh/internal/utils/PWLog$Level;

    new-instance v0, Lcom/pushwoosh/internal/utils/PWLog$Level;

    const/4 v5, 0x4

    const-string v6, "INFO"

    invoke-direct {v0, v6, v5}, Lcom/pushwoosh/internal/utils/PWLog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/internal/utils/PWLog$Level;->INFO:Lcom/pushwoosh/internal/utils/PWLog$Level;

    new-instance v0, Lcom/pushwoosh/internal/utils/PWLog$Level;

    const/4 v6, 0x5

    const-string v7, "DEBUG"

    invoke-direct {v0, v7, v6}, Lcom/pushwoosh/internal/utils/PWLog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/internal/utils/PWLog$Level;->DEBUG:Lcom/pushwoosh/internal/utils/PWLog$Level;

    new-instance v0, Lcom/pushwoosh/internal/utils/PWLog$Level;

    const/4 v7, 0x6

    const-string v8, "NOISE"

    invoke-direct {v0, v8, v7}, Lcom/pushwoosh/internal/utils/PWLog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/internal/utils/PWLog$Level;->NOISE:Lcom/pushwoosh/internal/utils/PWLog$Level;

    new-instance v0, Lcom/pushwoosh/internal/utils/PWLog$Level;

    const/4 v8, 0x7

    const-string v9, "INTERNAL"

    invoke-direct {v0, v9, v8}, Lcom/pushwoosh/internal/utils/PWLog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/internal/utils/PWLog$Level;->INTERNAL:Lcom/pushwoosh/internal/utils/PWLog$Level;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/pushwoosh/internal/utils/PWLog$Level;

    sget-object v9, Lcom/pushwoosh/internal/utils/PWLog$Level;->NONE:Lcom/pushwoosh/internal/utils/PWLog$Level;

    aput-object v9, v0, v1

    sget-object v1, Lcom/pushwoosh/internal/utils/PWLog$Level;->FATAL:Lcom/pushwoosh/internal/utils/PWLog$Level;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pushwoosh/internal/utils/PWLog$Level;->ERROR:Lcom/pushwoosh/internal/utils/PWLog$Level;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pushwoosh/internal/utils/PWLog$Level;->WARN:Lcom/pushwoosh/internal/utils/PWLog$Level;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pushwoosh/internal/utils/PWLog$Level;->INFO:Lcom/pushwoosh/internal/utils/PWLog$Level;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pushwoosh/internal/utils/PWLog$Level;->DEBUG:Lcom/pushwoosh/internal/utils/PWLog$Level;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pushwoosh/internal/utils/PWLog$Level;->NOISE:Lcom/pushwoosh/internal/utils/PWLog$Level;

    aput-object v1, v0, v7

    sget-object v1, Lcom/pushwoosh/internal/utils/PWLog$Level;->INTERNAL:Lcom/pushwoosh/internal/utils/PWLog$Level;

    aput-object v1, v0, v8

    sput-object v0, Lcom/pushwoosh/internal/utils/PWLog$Level;->a:[Lcom/pushwoosh/internal/utils/PWLog$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pushwoosh/internal/utils/PWLog$Level;
    .locals 1

    const-class v0, Lcom/pushwoosh/internal/utils/PWLog$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pushwoosh/internal/utils/PWLog$Level;

    return-object p0
.end method

.method public static values()[Lcom/pushwoosh/internal/utils/PWLog$Level;
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/utils/PWLog$Level;->a:[Lcom/pushwoosh/internal/utils/PWLog$Level;

    invoke-virtual {v0}, [Lcom/pushwoosh/internal/utils/PWLog$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pushwoosh/internal/utils/PWLog$Level;

    return-object v0
.end method
