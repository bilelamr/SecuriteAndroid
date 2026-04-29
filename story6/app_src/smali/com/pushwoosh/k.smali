.class final synthetic Lcom/pushwoosh/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/NotificationOpenReceiver$b;


# instance fields
.field private final a:Lcom/pushwoosh/NotificationOpenReceiver;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/NotificationOpenReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/k;->a:Lcom/pushwoosh/NotificationOpenReceiver;

    return-void
.end method

.method public static a(Lcom/pushwoosh/NotificationOpenReceiver;)Lcom/pushwoosh/NotificationOpenReceiver$b;
    .locals 1

    new-instance v0, Lcom/pushwoosh/k;

    invoke-direct {v0, p0}, Lcom/pushwoosh/k;-><init>(Lcom/pushwoosh/NotificationOpenReceiver;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/k;->a:Lcom/pushwoosh/NotificationOpenReceiver;

    invoke-static {v0, p1}, Lcom/pushwoosh/NotificationOpenReceiver;->a(Lcom/pushwoosh/NotificationOpenReceiver;Ljava/util/List;)V

    return-void
.end method
