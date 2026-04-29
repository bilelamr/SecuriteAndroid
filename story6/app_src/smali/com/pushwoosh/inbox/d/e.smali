.class final synthetic Lcom/pushwoosh/inbox/d/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/command/CommandType;


# static fields
.field private static final a:Lcom/pushwoosh/inbox/d/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/pushwoosh/inbox/d/e;

    invoke-direct {v0}, Lcom/pushwoosh/inbox/d/e;-><init>()V

    sput-object v0, Lcom/pushwoosh/inbox/d/e;->a:Lcom/pushwoosh/inbox/d/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/pushwoosh/internal/command/CommandType;
    .locals 1

    sget-object v0, Lcom/pushwoosh/inbox/d/e;->a:Lcom/pushwoosh/inbox/d/e;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/pushwoosh/inbox/d/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
