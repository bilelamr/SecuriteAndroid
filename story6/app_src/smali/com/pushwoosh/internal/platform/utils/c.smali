.class final synthetic Lcom/pushwoosh/internal/platform/utils/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/platform/utils/a$d$a;


# instance fields
.field private final a:Lcom/pushwoosh/internal/platform/utils/a$d;

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/pushwoosh/internal/platform/utils/a$f$a;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/internal/platform/utils/a$d;Landroid/os/Handler;Lcom/pushwoosh/internal/platform/utils/a$f$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/internal/platform/utils/c;->a:Lcom/pushwoosh/internal/platform/utils/a$d;

    iput-object p2, p0, Lcom/pushwoosh/internal/platform/utils/c;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/pushwoosh/internal/platform/utils/c;->c:Lcom/pushwoosh/internal/platform/utils/a$f$a;

    return-void
.end method

.method public static a(Lcom/pushwoosh/internal/platform/utils/a$d;Landroid/os/Handler;Lcom/pushwoosh/internal/platform/utils/a$f$a;)Lcom/pushwoosh/internal/platform/utils/a$d$a;
    .locals 1

    new-instance v0, Lcom/pushwoosh/internal/platform/utils/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/pushwoosh/internal/platform/utils/c;-><init>(Lcom/pushwoosh/internal/platform/utils/a$d;Landroid/os/Handler;Lcom/pushwoosh/internal/platform/utils/a$f$a;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/internal/platform/utils/c;->a:Lcom/pushwoosh/internal/platform/utils/a$d;

    iget-object v1, p0, Lcom/pushwoosh/internal/platform/utils/c;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pushwoosh/internal/platform/utils/c;->c:Lcom/pushwoosh/internal/platform/utils/a$f$a;

    invoke-static {v0, v1, v2, p1}, Lcom/pushwoosh/internal/platform/utils/a$d;->a(Lcom/pushwoosh/internal/platform/utils/a$d;Landroid/os/Handler;Lcom/pushwoosh/internal/platform/utils/a$f$a;Ljava/lang/String;)V

    return-void
.end method
