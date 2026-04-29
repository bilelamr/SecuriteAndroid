.class final synthetic Lcom/pushwoosh/internal/platform/utils/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/platform/utils/a$d$a;


# instance fields
.field private final a:Lcom/pushwoosh/internal/platform/utils/a$f$a;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/internal/platform/utils/a$f$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/internal/platform/utils/b;->a:Lcom/pushwoosh/internal/platform/utils/a$f$a;

    return-void
.end method

.method public static a(Lcom/pushwoosh/internal/platform/utils/a$f$a;)Lcom/pushwoosh/internal/platform/utils/a$d$a;
    .locals 1

    new-instance v0, Lcom/pushwoosh/internal/platform/utils/b;

    invoke-direct {v0, p0}, Lcom/pushwoosh/internal/platform/utils/b;-><init>(Lcom/pushwoosh/internal/platform/utils/a$f$a;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/internal/platform/utils/b;->a:Lcom/pushwoosh/internal/platform/utils/a$f$a;

    invoke-interface {v0, p1}, Lcom/pushwoosh/internal/platform/utils/a$f$a;->a(Ljava/lang/String;)V

    return-void
.end method
