.class public Lcom/pushwoosh/m;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/pushwoosh/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pushwoosh/m;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/pushwoosh/m;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/pushwoosh/m;->c:Landroid/app/NotificationManager;

    return-void
.end method

.method private b()I
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/m;->c:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/pushwoosh/notification/b/c;->a(Landroid/app/NotificationManager;)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/m;->a:Ljava/lang/String;

    const-string v1, "notificationManager is null"

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    return v0
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/m;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()I
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    invoke-direct {p0}, Lcom/pushwoosh/m;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/pushwoosh/m;->b()I

    move-result v1

    :cond_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/pushwoosh/m;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x6

    :cond_2
    return v1
.end method
