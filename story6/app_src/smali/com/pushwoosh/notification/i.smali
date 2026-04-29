.class final synthetic Lcom/pushwoosh/notification/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/repository/c$a;


# instance fields
.field private final a:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/pushwoosh/notification/i;->a:J

    return-void
.end method

.method public static a(J)Lcom/pushwoosh/repository/c$a;
    .locals 1

    new-instance v0, Lcom/pushwoosh/notification/i;

    invoke-direct {v0, p0, p1}, Lcom/pushwoosh/notification/i;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/pushwoosh/repository/b;)V
    .locals 2

    iget-wide v0, p0, Lcom/pushwoosh/notification/i;->a:J

    invoke-static {v0, v1, p1}, Lcom/pushwoosh/notification/RescheduleNotificationsWorker;->a(JLcom/pushwoosh/repository/b;)V

    return-void
.end method
