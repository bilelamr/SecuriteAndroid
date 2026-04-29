.class final synthetic Lcom/pushwoosh/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/NotificationOpenReceiver$a;


# instance fields
.field private final a:Lcom/pushwoosh/NotificationOpenReceiver;

.field private final b:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/NotificationOpenReceiver;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/l;->a:Lcom/pushwoosh/NotificationOpenReceiver;

    iput-object p2, p0, Lcom/pushwoosh/l;->b:Landroid/content/Intent;

    return-void
.end method

.method public static a(Lcom/pushwoosh/NotificationOpenReceiver;Landroid/content/Intent;)Lcom/pushwoosh/NotificationOpenReceiver$a;
    .locals 1

    new-instance v0, Lcom/pushwoosh/l;

    invoke-direct {v0, p0, p1}, Lcom/pushwoosh/l;-><init>(Lcom/pushwoosh/NotificationOpenReceiver;Landroid/content/Intent;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/l;->a:Lcom/pushwoosh/NotificationOpenReceiver;

    iget-object v1, p0, Lcom/pushwoosh/l;->b:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/pushwoosh/NotificationOpenReceiver;->a(Lcom/pushwoosh/NotificationOpenReceiver;Landroid/content/Intent;)V

    return-void
.end method
