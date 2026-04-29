.class final synthetic Lcom/pushwoosh/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/platform/utils/f;


# instance fields
.field private final a:Lcom/pushwoosh/s;

.field private final b:Lcom/pushwoosh/internal/event/Subscription;

.field private final c:Lcom/pushwoosh/internal/event/Subscription;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/s;Lcom/pushwoosh/internal/event/Subscription;Lcom/pushwoosh/internal/event/Subscription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/w;->a:Lcom/pushwoosh/s;

    iput-object p2, p0, Lcom/pushwoosh/w;->b:Lcom/pushwoosh/internal/event/Subscription;

    iput-object p3, p0, Lcom/pushwoosh/w;->c:Lcom/pushwoosh/internal/event/Subscription;

    return-void
.end method

.method public static a(Lcom/pushwoosh/s;Lcom/pushwoosh/internal/event/Subscription;Lcom/pushwoosh/internal/event/Subscription;)Lcom/pushwoosh/internal/platform/utils/f;
    .locals 1

    new-instance v0, Lcom/pushwoosh/w;

    invoke-direct {v0, p0, p1, p2}, Lcom/pushwoosh/w;-><init>(Lcom/pushwoosh/s;Lcom/pushwoosh/internal/event/Subscription;Lcom/pushwoosh/internal/event/Subscription;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/w;->a:Lcom/pushwoosh/s;

    iget-object v1, p0, Lcom/pushwoosh/w;->b:Lcom/pushwoosh/internal/event/Subscription;

    iget-object v2, p0, Lcom/pushwoosh/w;->c:Lcom/pushwoosh/internal/event/Subscription;

    invoke-static {v0, v1, v2, p1}, Lcom/pushwoosh/s;->a(Lcom/pushwoosh/s;Lcom/pushwoosh/internal/event/Subscription;Lcom/pushwoosh/internal/event/Subscription;Ljava/lang/String;)V

    return-void
.end method
