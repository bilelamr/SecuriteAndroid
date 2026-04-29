.class final synthetic Lcom/pushwoosh/internal/platform/utils/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/pushwoosh/internal/platform/utils/a$d;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/internal/platform/utils/a$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/internal/platform/utils/d;->a:Lcom/pushwoosh/internal/platform/utils/a$d;

    return-void
.end method

.method public static a(Lcom/pushwoosh/internal/platform/utils/a$d;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/pushwoosh/internal/platform/utils/d;

    invoke-direct {v0, p0}, Lcom/pushwoosh/internal/platform/utils/d;-><init>(Lcom/pushwoosh/internal/platform/utils/a$d;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/internal/platform/utils/d;->a:Lcom/pushwoosh/internal/platform/utils/a$d;

    invoke-static {v0}, Lcom/pushwoosh/internal/platform/utils/a$d;->a(Lcom/pushwoosh/internal/platform/utils/a$d;)V

    return-void
.end method
