.class final synthetic Lcom/pushwoosh/internal/event/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/event/EventListener;


# instance fields
.field private final a:Lcom/pushwoosh/internal/event/Emitter$1;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/internal/event/Emitter$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/internal/event/b;->a:Lcom/pushwoosh/internal/event/Emitter$1;

    return-void
.end method

.method public static a(Lcom/pushwoosh/internal/event/Emitter$1;)Lcom/pushwoosh/internal/event/EventListener;
    .locals 1

    new-instance v0, Lcom/pushwoosh/internal/event/b;

    invoke-direct {v0, p0}, Lcom/pushwoosh/internal/event/b;-><init>(Lcom/pushwoosh/internal/event/Emitter$1;)V

    return-object v0
.end method


# virtual methods
.method public onReceive(Lcom/pushwoosh/internal/event/Event;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/internal/event/b;->a:Lcom/pushwoosh/internal/event/Emitter$1;

    invoke-static {v0, p1}, Lcom/pushwoosh/internal/event/Emitter$1;->a(Lcom/pushwoosh/internal/event/Emitter$1;Lcom/pushwoosh/internal/event/Event;)V

    return-void
.end method
