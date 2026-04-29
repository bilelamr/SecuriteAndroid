.class final synthetic Lcom/pushwoosh/notification/handlers/notification/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/command/CommandType;


# static fields
.field private static final a:Lcom/pushwoosh/notification/handlers/notification/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/pushwoosh/notification/handlers/notification/e;

    invoke-direct {v0}, Lcom/pushwoosh/notification/handlers/notification/e;-><init>()V

    sput-object v0, Lcom/pushwoosh/notification/handlers/notification/e;->a:Lcom/pushwoosh/notification/handlers/notification/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/pushwoosh/internal/command/CommandType;
    .locals 1

    sget-object v0, Lcom/pushwoosh/notification/handlers/notification/e;->a:Lcom/pushwoosh/notification/handlers/notification/e;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/pushwoosh/notification/handlers/notification/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
