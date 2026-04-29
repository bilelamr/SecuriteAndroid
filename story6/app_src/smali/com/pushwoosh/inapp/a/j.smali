.class final synthetic Lcom/pushwoosh/inapp/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/inapp/a/a$c;


# instance fields
.field private final a:Lcom/pushwoosh/internal/utils/c;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/internal/utils/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/a/j;->a:Lcom/pushwoosh/internal/utils/c;

    return-void
.end method

.method public static a(Lcom/pushwoosh/internal/utils/c;)Lcom/pushwoosh/inapp/a/a$c;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/a/j;

    invoke-direct {v0, p0}, Lcom/pushwoosh/inapp/a/j;-><init>(Lcom/pushwoosh/internal/utils/c;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/a/j;->a:Lcom/pushwoosh/internal/utils/c;

    invoke-virtual {v0}, Lcom/pushwoosh/internal/utils/c;->c()Z

    move-result v0

    return v0
.end method
