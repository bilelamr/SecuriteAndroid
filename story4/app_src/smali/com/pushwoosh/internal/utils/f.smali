.class final synthetic Lcom/pushwoosh/internal/utils/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/utils/NotificationRegistrarHelper$a;


# instance fields
.field private final a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/internal/utils/f;->a:Landroid/os/Bundle;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/pushwoosh/internal/utils/NotificationRegistrarHelper$a;
    .locals 1

    new-instance v0, Lcom/pushwoosh/internal/utils/f;

    invoke-direct {v0, p0}, Lcom/pushwoosh/internal/utils/f;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/internal/utils/f;->a:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/NotificationRegistrarHelper;->a(Landroid/os/Bundle;)V

    return-void
.end method
