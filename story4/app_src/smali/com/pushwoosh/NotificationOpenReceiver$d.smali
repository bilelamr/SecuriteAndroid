.class Lcom/pushwoosh/NotificationOpenReceiver$d;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/NotificationOpenReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pushwoosh/NotificationOpenReceiver$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/NotificationOpenReceiver$d;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    invoke-static {}, Lcom/pushwoosh/repository/RepositoryModule;->getPushBundleStorage()Lcom/pushwoosh/repository/q;

    move-result-object p1

    invoke-interface {p1}, Lcom/pushwoosh/repository/q;->b()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/NotificationOpenReceiver$d;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
