.class public Lcom/pushwoosh/inbox/internal/a;
.super Ljava/lang/Object;


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/pushwoosh/inbox/internal/a;->a:J

    return-void
.end method

.method public static a()J
    .locals 2

    sget-wide v0, Lcom/pushwoosh/inbox/internal/a;->a:J

    return-wide v0
.end method
