.class final synthetic Lcom/pushwoosh/internal/utils/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/pushwoosh/internal/utils/a;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/internal/utils/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/internal/utils/b;->a:Lcom/pushwoosh/internal/utils/a;

    return-void
.end method

.method public static a(Lcom/pushwoosh/internal/utils/a;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/pushwoosh/internal/utils/b;

    invoke-direct {v0, p0}, Lcom/pushwoosh/internal/utils/b;-><init>(Lcom/pushwoosh/internal/utils/a;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/internal/utils/b;->a:Lcom/pushwoosh/internal/utils/a;

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/a;->a(Lcom/pushwoosh/internal/utils/a;)V

    return-void
.end method
