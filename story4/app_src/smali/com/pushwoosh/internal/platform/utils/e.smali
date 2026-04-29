.class final synthetic Lcom/pushwoosh/internal/platform/utils/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/platform/utils/a$f$a;


# instance fields
.field private final a:Lcom/pushwoosh/internal/platform/utils/a$f;

.field private final b:Lcom/pushwoosh/internal/platform/utils/f;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/internal/platform/utils/a$f;Lcom/pushwoosh/internal/platform/utils/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/internal/platform/utils/e;->a:Lcom/pushwoosh/internal/platform/utils/a$f;

    iput-object p2, p0, Lcom/pushwoosh/internal/platform/utils/e;->b:Lcom/pushwoosh/internal/platform/utils/f;

    return-void
.end method

.method public static a(Lcom/pushwoosh/internal/platform/utils/a$f;Lcom/pushwoosh/internal/platform/utils/f;)Lcom/pushwoosh/internal/platform/utils/a$f$a;
    .locals 1

    new-instance v0, Lcom/pushwoosh/internal/platform/utils/e;

    invoke-direct {v0, p0, p1}, Lcom/pushwoosh/internal/platform/utils/e;-><init>(Lcom/pushwoosh/internal/platform/utils/a$f;Lcom/pushwoosh/internal/platform/utils/f;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/internal/platform/utils/e;->a:Lcom/pushwoosh/internal/platform/utils/a$f;

    iget-object v1, p0, Lcom/pushwoosh/internal/platform/utils/e;->b:Lcom/pushwoosh/internal/platform/utils/f;

    invoke-static {v0, v1, p1}, Lcom/pushwoosh/internal/platform/utils/a$f;->a(Lcom/pushwoosh/internal/platform/utils/a$f;Lcom/pushwoosh/internal/platform/utils/f;Ljava/lang/String;)V

    return-void
.end method
