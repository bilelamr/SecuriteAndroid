.class final synthetic Lcom/pushwoosh/internal/event/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/pushwoosh/internal/event/Event;

.field private final b:Ljava/util/List;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/internal/event/Event;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/internal/event/c;->a:Lcom/pushwoosh/internal/event/Event;

    iput-object p2, p0, Lcom/pushwoosh/internal/event/c;->b:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/pushwoosh/internal/event/Event;Ljava/util/List;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/pushwoosh/internal/event/c;

    invoke-direct {v0, p0, p1}, Lcom/pushwoosh/internal/event/c;-><init>(Lcom/pushwoosh/internal/event/Event;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/internal/event/c;->a:Lcom/pushwoosh/internal/event/Event;

    iget-object v1, p0, Lcom/pushwoosh/internal/event/c;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/pushwoosh/internal/event/EventBus;->a(Lcom/pushwoosh/internal/event/Event;Ljava/util/List;)V

    return-void
.end method
