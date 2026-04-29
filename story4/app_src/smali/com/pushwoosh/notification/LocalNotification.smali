.class public Lcom/pushwoosh/notification/LocalNotification;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/notification/LocalNotification$Builder;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/pushwoosh/notification/LocalNotification;->b:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/pushwoosh/notification/LocalNotification;->b:Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pushwoosh/notification/b;->b(Landroid/os/Bundle;Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pushwoosh/notification/LocalNotification$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/notification/LocalNotification;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, Lcom/pushwoosh/notification/LocalNotification;->a:I

    return-void
.end method

.method static synthetic a(Lcom/pushwoosh/notification/LocalNotification;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/notification/LocalNotification;->a(I)V

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/pushwoosh/notification/LocalNotification;->a:I

    return v0
.end method

.method b()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/notification/LocalNotification;->b:Landroid/os/Bundle;

    return-object v0
.end method
