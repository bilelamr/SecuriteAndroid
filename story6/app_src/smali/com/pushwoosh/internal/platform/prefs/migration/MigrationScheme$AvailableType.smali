.class public final enum Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AvailableType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOOLEAN:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

.field public static final enum INT:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

.field public static final enum LONG:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

.field public static final enum STRING:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

.field private static final synthetic a:[Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const/4 v1, 0x0

    const-string v2, "STRING"

    invoke-direct {v0, v2, v1}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->STRING:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    new-instance v0, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const/4 v2, 0x1

    const-string v3, "BOOLEAN"

    invoke-direct {v0, v3, v2}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->BOOLEAN:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    new-instance v0, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const/4 v3, 0x2

    const-string v4, "LONG"

    invoke-direct {v0, v4, v3}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->LONG:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    new-instance v0, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const/4 v4, 0x3

    const-string v5, "INT"

    invoke-direct {v0, v5, v4}, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->INT:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    sget-object v5, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->STRING:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->BOOLEAN:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->LONG:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->INT:Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->a:[Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;
    .locals 1

    const-class v0, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    return-object p0
.end method

.method public static values()[Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->a:[Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    invoke-virtual {v0}, [Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pushwoosh/internal/platform/prefs/migration/MigrationScheme$AvailableType;

    return-object v0
.end method
